.class Lcom/sec/android/app/controlpanel/activity/JobManagerActivity$1;
.super Ljava/lang/Object;
.source "JobManagerActivity.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 99
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity$1;->this$0:Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .registers 9
    .parameter "tag"

    .prologue
    const/high16 v6, -0x100

    const/high16 v5, 0x3f80

    const/4 v4, 0x0

    .line 103
    const v0, 0x1020016

    .line 104
    .local v0, idTitle:I
    const/4 v1, 0x0

    .local v1, tabindex:I
    :goto_9
    const/4 v3, 0x5

    if-ge v1, v3, :cond_26

    .line 105
    iget-object v3, p0, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity$1;->this$0:Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;

    #getter for: Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->tabHost:Landroid/widget/TabHost;
    invoke-static {v3}, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->access$000(Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;)Landroid/widget/TabHost;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 106
    .local v2, tv:Landroid/widget/TextView;
    invoke-virtual {v2, v4, v4, v4, v6}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 104
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 108
    .end local v2           #tv:Landroid/widget/TextView;
    :cond_26
    iget-object v3, p0, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity$1;->this$0:Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;

    #getter for: Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->tabHost:Landroid/widget/TabHost;
    invoke-static {v3}, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->access$000(Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;)Landroid/widget/TabHost;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity$1;->this$0:Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;

    #getter for: Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->tabHost:Landroid/widget/TabHost;
    invoke-static {v4}, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->access$000(Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;)Landroid/widget/TabHost;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 109
    .restart local v2       #tv:Landroid/widget/TextView;
    const/high16 v3, 0x4000

    invoke-virtual {v2, v3, v5, v5, v6}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 110
    return-void
.end method
