import time
import logging
import boto3
import os

logger = logging.getLogger()
logging.basicConfig()
logger.setLevel(logging.INFO)


s3 = boto3.resource('s3')
sts = boto3.client('sts')

account_num = os.environ.get('PLUGIN_AWS_ACCOUNT', sts.get_caller_identity()['Account'])
zip_files = os.environ.get('PLUGIN_ZIP_FILES', 'deployment.zip').split(',')
region = os.environ.get('PLUGIN_REGION', 'us-west-2')
bucket = os.environ.get('PLUGIN_BUCKET', 'deploy-artifacts-{}-{}'.format(account_num, region))

for f in zip_files:
    print(f)
    print(zip_files)
    print(region)
    print(bucket)
    print(os.environ.get('PLUGIN_BOSTON'))
    # s3.meta.client.upload_file(f, bucket, "{}/{}/{}/{}".format(prefix, deployable_name, sha, os.path.basename(f)))
