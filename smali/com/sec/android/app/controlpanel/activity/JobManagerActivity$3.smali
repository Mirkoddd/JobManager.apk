.class Lcom/sec/android/app/controlpanel/activity/JobManagerActivity$3;
.super Ljava/lang/Object;
.source "JobManagerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->switchTabByIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity$3;->this$0:Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 230
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity$3;->this$0:Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;

    #getter for: Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->tabHost:Landroid/widget/TabHost;
    invoke-static {v1}, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->access$000(Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;)Landroid/widget/TabHost;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    .line 232
    .local v0, currentTab:I
    if-ltz v0, :cond_1a

    const/4 v1, 0x3

    if-gt v0, v1, :cond_1a

    .line 234
    invoke-static {}, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->access$100()Landroid/widget/HorizontalScrollView;

    move-result-object v1

    const/16 v2, 0x168

    invoke-virtual {v1, v2, v3}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 240
    :cond_19
    :goto_19
    return-void

    .line 236
    :cond_1a
    const/4 v1, 0x4

    if-lt v0, v1, :cond_19

    .line 238
    invoke-static {}, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->access$100()Landroid/widget/HorizontalScrollView;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    goto :goto_19
.end method
