.class Lcom/sec/android/app/controlpanel/activity/JobManagerActivity$4;
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
    .line 245
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity$4;->this$0:Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 247
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity$4;->this$0:Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->moveToTabHost(Z)V

    .line 248
    return-void
.end method
