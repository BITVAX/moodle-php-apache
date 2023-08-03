REPONAME=$1
shift
VERSION=$1
shift
REGISTRY=$1

: ${REPONAME:='moodle'}
: ${VERSION:='8.3-bookworm'}
: ${REGISTRY:='registry.com'}

if docker build --tag $REGISTRY/$REPONAME:$VERSION  . ; then
  docker push $REGISTRY/$REPONAME:$VERSION
fi