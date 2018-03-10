# Long-Term Storage for Family Photos

My mother scanned multiple decades of family photos to high-resolution TIFFs. This reposiotry creates and manages a bucket to hold backup copies of those photos. _This is not the only backup_, but it is an important backup.

The bucket created by this repository is non-public.

## Updating Stored Photos

The bucket contents include a copy of the photo archive disk. To upload an updated version:

    aws s3 sync /Volumes/FamilyPhotos/photos/family\ photos/ s3://oj-photo-archive/family-photos/
    aws s3 sync /Volumes/FamilyPhotos/photos/family\ photos/ s3://oj-photo-archive/family-photos/

(The second one catches any updates made during the first.)
