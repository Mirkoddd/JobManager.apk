.class Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7$2;
.super Ljava/lang/Object;
.source "RunningAppsListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;


# direct methods
.method constructor <init>(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;)V
    .registers 2
    .parameter

    .prologue
    .line 368
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7$2;->this$1:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const-wide/16 v2, 0xbb8

    .line 372
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7$2;->this$1:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    #getter for: Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mPackageInfoAdapter:Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;
    invoke-static {v0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$000(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7$2;->this$1:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;

    iget-object v1, v1, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    #getter for: Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mPkgInfo:Lcom/sec/android/app/controlpanel/PackageInfo;
    invoke-static {v1}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$400(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Lcom/sec/android/app/controlpanel/PackageInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/controlpanel/PackageInfo;->getRunningAppPackageList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->setList(Ljava/util/List;)V

    .line 373
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7$2;->this$1:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    #getter for: Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mPackageInfoAdapter:Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;
    invoke-static {v0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$000(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->sort()V

    .line 374
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7$2;->this$1:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    #getter for: Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mPackageInfoAdapter:Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;
    invoke-static {v0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$000(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->notifyDataSetChanged()V

    .line 375
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7$2;->this$1:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    #getter for: Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$300(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 376
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7$2;->this$1:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    #getter for: Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$300(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 377
    return-void
.end method
