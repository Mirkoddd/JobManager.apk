.class public Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;
.super Landroid/app/Activity;
.source "RamUseageActivity.java"


# static fields
.field static final DEBUGGABLE:Z


# instance fields
.field clear_button:Landroid/widget/Button;

.field clear_text:Landroid/widget/TextView;

.field level:I

.field mMemGraph:Landroid/widget/ProgressBar;

.field mMemoryAvailable:Landroid/widget/TextView;

.field private mMemoryObserver:Lcom/sec/android/app/controlpanel/Observer;

.field mPkgInfo:Lcom/sec/android/app/controlpanel/PackageInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 31
    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_d

    :goto_a
    sput-boolean v0, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;->DEBUGGABLE:Z

    return-void

    :cond_d
    move v0, v1

    goto :goto_a
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;->level:I

    .line 113
    new-instance v0, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity$3;-><init>(Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;->mMemoryObserver:Lcom/sec/android/app/controlpanel/Observer;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;->setContentView(I)V

    .line 52
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/controlpanel/PackageInfo;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/controlpanel/PackageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;->mPkgInfo:Lcom/sec/android/app/controlpanel/PackageInfo;

    .line 54
    const v0, 0x7f070013

    invoke-virtual {p0, v0}, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;->mMemoryAvailable:Landroid/widget/TextView;

    .line 55
    const v0, 0x7f070014

    invoke-virtual {p0, v0}, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;->mMemGraph:Landroid/widget/ProgressBar;

    .line 56
    const v0, 0x7f070015

    invoke-virtual {p0, v0}, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;->clear_text:Landroid/widget/TextView;

    .line 58
    const v0, 0x7f070016

    invoke-virtual {p0, v0}, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;->clear_button:Landroid/widget/Button;

    .line 59
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;->clear_button:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 60
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;->clear_button:Landroid/widget/Button;

    new-instance v1, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity$1;-><init>(Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter "menu"

    .prologue
    .line 96
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter "item"

    .prologue
    .line 101
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 102
    .local v0, menuId:I
    const/16 v1, 0xd

    if-ne v0, v1, :cond_15

    .line 103
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity$2;-><init>(Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 110
    :cond_15
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/controlpanel/MemoryInfo;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/controlpanel/MemoryInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;->mMemoryObserver:Lcom/sec/android/app/controlpanel/Observer;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/controlpanel/MemoryInfo;->unregisterObserver(Lcom/sec/android/app/controlpanel/Observer;)V

    .line 88
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 89
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/controlpanel/MemoryInfo;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/controlpanel/MemoryInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;->mMemoryObserver:Lcom/sec/android/app/controlpanel/Observer;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/controlpanel/MemoryInfo;->registerObserver(Lcom/sec/android/app/controlpanel/Observer;)V

    .line 79
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/controlpanel/MemoryInfo;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/controlpanel/MemoryInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/controlpanel/MemoryInfo;->refresh()V

    .line 80
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 81
    return-void
.end method
