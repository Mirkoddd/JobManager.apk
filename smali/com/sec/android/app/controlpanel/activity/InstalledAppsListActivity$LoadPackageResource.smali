.class public Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$LoadPackageResource;
.super Landroid/os/AsyncTask;
.source "InstalledAppsListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LoadPackageResource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/controlpanel/PackageInfoItem;",
            ">;"
        }
    .end annotation
.end field

.field running:Z

.field final synthetic this$0:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;Ljava/util/List;)V
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/controlpanel/PackageInfoItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 315
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$LoadPackageResource;->this$0:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 313
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$LoadPackageResource;->running:Z

    .line 316
    iput-object p2, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$LoadPackageResource;->list:Ljava/util/List;

    .line 317
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 310
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$LoadPackageResource;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 10
    .parameter "params"

    .prologue
    .line 321
    const-wide/16 v2, 0x0

    .line 324
    .local v2, minCheck:J
    iget-object v6, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$LoadPackageResource;->list:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/controlpanel/PackageInfoItem;

    .line 325
    .local v1, item:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 326
    .local v4, temp:J
    iget-boolean v6, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$LoadPackageResource;->running:Z

    if-nez v6, :cond_1e

    .line 339
    .end local v1           #item:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    .end local v4           #temp:J
    :cond_1c
    const/4 v6, 0x0

    return-object v6

    .line 328
    .restart local v1       #item:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    .restart local v4       #temp:J
    :cond_1e
    iget-object v6, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$LoadPackageResource;->this$0:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;

    #getter for: Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->mPkgInfo:Lcom/sec/android/app/controlpanel/PackageInfo;
    invoke-static {v6}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->access$100(Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;)Lcom/sec/android/app/controlpanel/PackageInfo;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/sec/android/app/controlpanel/PackageInfo;->loadIcon(Lcom/sec/android/app/controlpanel/PackageInfoItem;)V

    .line 329
    iget-object v6, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$LoadPackageResource;->this$0:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;

    #getter for: Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->mPkgInfo:Lcom/sec/android/app/controlpanel/PackageInfo;
    invoke-static {v6}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->access$100(Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;)Lcom/sec/android/app/controlpanel/PackageInfo;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/sec/android/app/controlpanel/PackageInfo;->loadLabel(Lcom/sec/android/app/controlpanel/PackageInfoItem;)V

    .line 330
    iget-object v6, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$LoadPackageResource;->this$0:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;

    #getter for: Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->mPkgInfo:Lcom/sec/android/app/controlpanel/PackageInfo;
    invoke-static {v6}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->access$100(Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;)Lcom/sec/android/app/controlpanel/PackageInfo;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/sec/android/app/controlpanel/PackageInfo;->loadSize(Lcom/sec/android/app/controlpanel/PackageInfoItem;)V

    .line 331
    const-wide/16 v6, 0x1f4

    cmp-long v6, v2, v6

    if-lez v6, :cond_47

    .line 332
    const-wide/16 v2, 0x0

    .line 333
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Void;

    invoke-virtual {p0, v6}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$LoadPackageResource;->publishProgress([Ljava/lang/Object;)V

    .line 335
    :cond_47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    add-long/2addr v2, v6

    goto :goto_8
.end method

.method protected onCancelled()V
    .registers 2

    .prologue
    .line 346
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$LoadPackageResource;->running:Z

    .line 347
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 348
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 310
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$LoadPackageResource;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 4
    .parameter "result"

    .prologue
    .line 357
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$LoadPackageResource;->this$0:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;

    #getter for: Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->access$300(Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 358
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$LoadPackageResource;->this$0:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;

    invoke-static {v0}, Lcom/sec/android/app/controlpanel/Utils;->isLocaleChange(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 361
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$LoadPackageResource;->this$0:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;->saveCache()V

    .line 362
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$LoadPackageResource;->this$0:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;

    invoke-static {v0}, Lcom/sec/android/app/controlpanel/Utils;->writeLocaleConfig(Landroid/content/Context;)V

    .line 364
    :cond_24
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 365
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 310
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$LoadPackageResource;->onProgressUpdate([Ljava/lang/Void;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Void;)V
    .registers 4
    .parameter "progress"

    .prologue
    .line 352
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$LoadPackageResource;->this$0:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;

    #getter for: Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->access$300(Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 353
    return-void
.end method
