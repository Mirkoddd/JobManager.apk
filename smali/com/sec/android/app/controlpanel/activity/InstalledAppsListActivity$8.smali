.class Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$8;
.super Ljava/lang/Object;
.source "InstalledAppsListActivity.java"

# interfaces
.implements Lcom/sec/android/app/controlpanel/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 380
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$8;->this$0:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Lcom/sec/android/app/controlpanel/Observable;)V
    .registers 13
    .parameter "o"

    .prologue
    .line 382
    instance-of v7, p1, Lcom/sec/android/app/controlpanel/StorageInfo;

    if-eqz v7, :cond_54

    move-object v2, p1

    .line 383
    check-cast v2, Lcom/sec/android/app/controlpanel/StorageInfo;

    .line 384
    .local v2, c:Lcom/sec/android/app/controlpanel/StorageInfo;
    invoke-virtual {v2}, Lcom/sec/android/app/controlpanel/StorageInfo;->getAvailableSizeOfData()J

    move-result-wide v0

    .line 385
    .local v0, availData:J
    invoke-virtual {v2}, Lcom/sec/android/app/controlpanel/StorageInfo;->getTotalSizeOfData()J

    move-result-wide v3

    .line 386
    .local v3, totalData:J
    sub-long v5, v3, v0

    .line 388
    .local v5, usedData:J
    iget-object v7, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$8;->this$0:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;

    #getter for: Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->mStatus:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->access$400(Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;)Landroid/widget/TextView;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$8;->this$0:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;

    const v10, 0x7f05000a

    invoke-virtual {v9, v10}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$8;->this$0:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;

    invoke-virtual {v9}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->getApplication()Landroid/app/Application;

    move-result-object v9

    invoke-static {v9, v5, v6}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$8;->this$0:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;

    invoke-virtual {v9}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->getApplication()Landroid/app/Application;

    move-result-object v9

    invoke-static {v9, v3, v4}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 392
    .end local v0           #availData:J
    .end local v2           #c:Lcom/sec/android/app/controlpanel/StorageInfo;
    .end local v3           #totalData:J
    .end local v5           #usedData:J
    :cond_54
    return-void
.end method
