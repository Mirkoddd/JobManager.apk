.class Lcom/sec/android/app/controlpanel/activity/RamUseageActivity$1;
.super Ljava/lang/Object;
.source "RamUseageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity$1;->this$0:Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity$1;->this$0:Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;->clear_button:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 63
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity$1;->this$0:Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;->mPkgInfo:Lcom/sec/android/app/controlpanel/PackageInfo;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/controlpanel/PackageInfo;->killAll(I)V

    .line 64
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity$1;->this$0:Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;->clear_text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity$1;->this$0:Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050041

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity$1$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity$1$1;-><init>(Lcom/sec/android/app/controlpanel/activity/RamUseageActivity$1;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 70
    return-void
.end method
