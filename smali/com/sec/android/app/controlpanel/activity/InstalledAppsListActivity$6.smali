.class Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$6;
.super Landroid/os/Handler;
.source "InstalledAppsListActivity.java"


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
    .line 252
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$6;->this$0:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    .line 254
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_8c

    .line 300
    :goto_5
    return-void

    .line 256
    :pswitch_6
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$6;->this$0:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;

    new-instance v2, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$6$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$6$1;-><init>(Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$6;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_5

    .line 268
    :pswitch_11
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$6;->this$0:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;

    new-instance v2, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$6$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$6$2;-><init>(Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$6;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_5

    .line 279
    :pswitch_1c
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$6;->this$0:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;

    #getter for: Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->loadPackageResource:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$LoadPackageResource;
    invoke-static {v1}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->access$200(Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;)Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$LoadPackageResource;

    move-result-object v1

    if-eqz v1, :cond_2e

    .line 280
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$6;->this$0:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;

    #getter for: Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->loadPackageResource:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$LoadPackageResource;
    invoke-static {v1}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->access$200(Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;)Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$LoadPackageResource;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$LoadPackageResource;->cancel(Z)Z

    .line 281
    :cond_2e
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 282
    .local v0, cloneObject:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$6;->this$0:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;

    #getter for: Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->mPackageInfoAdapter:Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;
    invoke-static {v1}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->access$000(Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;)Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->getBaseAppList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 283
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$6;->this$0:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;

    new-instance v2, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$LoadPackageResource;

    iget-object v3, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$6;->this$0:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;

    invoke-direct {v2, v3, v0}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$LoadPackageResource;-><init>(Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;Ljava/util/List;)V

    #setter for: Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->loadPackageResource:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$LoadPackageResource;
    invoke-static {v1, v2}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->access$202(Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$LoadPackageResource;)Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$LoadPackageResource;

    .line 284
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$6;->this$0:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;

    #getter for: Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->loadPackageResource:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$LoadPackageResource;
    invoke-static {v1}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->access$200(Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;)Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$LoadPackageResource;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$LoadPackageResource;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_5

    .line 287
    .end local v0           #cloneObject:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    :pswitch_59
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$6;->this$0:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;

    invoke-static {v1}, Lcom/sec/android/app/controlpanel/Utils;->isLocaleChange(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 290
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$6;->this$0:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;->reloadAppName()V

    .line 291
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$6;->this$0:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;->clearCache()V

    goto :goto_5

    .line 293
    :cond_7c
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$6;->this$0:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;->loadCache()V

    goto/16 :goto_5

    .line 254
    nop

    :pswitch_data_8c
    .packed-switch 0x1
        :pswitch_6
        :pswitch_11
        :pswitch_1c
        :pswitch_59
    .end packed-switch
.end method
