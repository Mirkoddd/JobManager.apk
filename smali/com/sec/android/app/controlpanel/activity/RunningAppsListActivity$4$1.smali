.class Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$4$1;
.super Ljava/lang/Object;
.source "RunningAppsListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$4;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$4;

.field final synthetic val$id:I

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$4;Landroid/view/View;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 220
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$4$1;->this$1:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$4;

    iput-object p2, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$4$1;->val$view:Landroid/view/View;

    iput p3, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$4$1;->val$id:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 222
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$4$1;->val$view:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 223
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$4$1;->this$1:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$4;

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$4;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    #getter for: Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mPackageInfoAdapter:Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;
    invoke-static {v0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$000(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;

    move-result-object v1

    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$4$1;->val$view:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    iget v2, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$4$1;->val$id:I

    invoke-virtual {v1, v0, v2}, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->changeButtonTextColor(Landroid/widget/Button;I)V

    .line 224
    return-void
.end method
