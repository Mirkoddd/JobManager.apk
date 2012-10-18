.class public Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;
.super Landroid/app/ListActivity;
.source "InstalledAppsListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$LoadPackageResource;
    }
.end annotation


# instance fields
.field private intent:Landroid/content/Intent;

.field private loadPackageResource:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$LoadPackageResource;

.field private mAppInfoObserver:Lcom/sec/android/app/controlpanel/Observer;

.field private mHandler:Landroid/os/Handler;

.field private mHelp:Landroid/widget/TextView;

.field private mOnListButtonItemClickListener:Landroid/view/View$OnClickListener;

.field private mOnListButtonItemTouchListener:Landroid/view/View$OnTouchListener;

.field private mPackageInfoAdapter:Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;

.field private mPkgInfo:Lcom/sec/android/app/controlpanel/PackageInfo;

.field private mStatus:Landroid/widget/TextView;

.field private mStorageInfoObserver:Lcom/sec/android/app/controlpanel/Observer;

.field onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 174
    new-instance v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$3;-><init>(Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 204
    new-instance v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$4;-><init>(Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->mOnListButtonItemClickListener:Landroid/view/View$OnClickListener;

    .line 212
    new-instance v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$5;-><init>(Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->mOnListButtonItemTouchListener:Landroid/view/View$OnTouchListener;

    .line 252
    new-instance v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$6;

    invoke-direct {v0, p0}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$6;-><init>(Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->mHandler:Landroid/os/Handler;

    .line 368
    new-instance v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$7;

    invoke-direct {v0, p0}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$7;-><init>(Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->mAppInfoObserver:Lcom/sec/android/app/controlpanel/Observer;

    .line 380
    new-instance v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$8;

    invoke-direct {v0, p0}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$8;-><init>(Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->mStorageInfoObserver:Lcom/sec/android/app/controlpanel/Observer;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;)Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->mPackageInfoAdapter:Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;)Lcom/sec/android/app/controlpanel/PackageInfo;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->mPkgInfo:Lcom/sec/android/app/controlpanel/PackageInfo;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;)Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$LoadPackageResource;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->loadPackageResource:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$LoadPackageResource;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$LoadPackageResource;)Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$LoadPackageResource;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->loadPackageResource:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$LoadPackageResource;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->mStatus:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 188
    packed-switch p1, :pswitch_data_26

    .line 199
    :cond_3
    :goto_3
    return-void

    .line 190
    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->intent:Landroid/content/Intent;

    const-string v1, "pkg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 191
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->intent:Landroid/content/Intent;

    const-string v2, "pkg"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;->updatePackageInfoItem(Ljava/lang/String;)V

    goto :goto_3

    .line 188
    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const v1, 0x7f030003

    invoke-virtual {p0, v1}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->setContentView(I)V

    .line 64
    const v1, 0x7f070010

    invoke-virtual {p0, v1}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->mHelp:Landroid/widget/TextView;

    .line 65
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->mHelp:Landroid/widget/TextView;

    const v2, 0x7f05003d

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 66
    const v1, 0x7f070011

    invoke-virtual {p0, v1}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->mStatus:Landroid/widget/TextView;

    .line 67
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/controlpanel/PackageInfo;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/controlpanel/PackageInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->mPkgInfo:Lcom/sec/android/app/controlpanel/PackageInfo;

    .line 68
    new-instance v1, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;

    invoke-direct {v1, p0}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->mPackageInfoAdapter:Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;

    .line 69
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->mPackageInfoAdapter:Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;

    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->mOnListButtonItemClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->mPackageInfoAdapter:Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;

    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->mOnListButtonItemTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 71
    const v1, 0x102000a

    invoke-virtual {p0, v1}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 72
    .local v0, lv:Landroid/widget/ListView;
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->mPackageInfoAdapter:Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 73
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 74
    new-instance v1, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$1;-><init>(Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 85
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 7
    .parameter "id"

    .prologue
    .line 397
    packed-switch p1, :pswitch_data_48

    .line 425
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 399
    :pswitch_5
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->mPackageInfoAdapter:Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->getSortOrder()I

    move-result v1

    .line 400
    .local v1, sortOrder:I
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f050035

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f040001

    new-instance v4, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$9;

    invoke-direct {v4, p0}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$9;-><init>(Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;)V

    invoke-virtual {v2, v3, v1, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_4

    .line 411
    .end local v1           #sortOrder:I
    :pswitch_28
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 412
    .local v0, dlg:Landroid/app/ProgressDialog;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 413
    const v2, 0x7f050001

    invoke-virtual {p0, v2}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 414
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 415
    new-instance v2, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$10;

    invoke-direct {v2, p0}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$10;-><init>(Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;)V

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_4

    .line 397
    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_5
        :pswitch_28
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 137
    const/16 v0, 0xb

    const v1, 0x7f050034

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x202016f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 142
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;->saveCache()V

    .line 132
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 133
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 6
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    .line 154
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 155
    .local v0, menuId:I
    const/16 v1, 0xb

    if-ne v0, v1, :cond_d

    .line 156
    invoke-virtual {p0, v3}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->showDialog(I)V

    .line 166
    :cond_c
    :goto_c
    return v3

    .line 157
    :cond_d
    const/16 v1, 0xd

    if-ne v0, v1, :cond_c

    .line 158
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$2;-><init>(Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_c
.end method

.method protected onPause()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 113
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 114
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->loadPackageResource:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$LoadPackageResource;

    if-eqz v0, :cond_d

    .line 115
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->loadPackageResource:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$LoadPackageResource;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$LoadPackageResource;->cancel(Z)Z

    .line 116
    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->mPkgInfo:Lcom/sec/android/app/controlpanel/PackageInfo;

    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->mAppInfoObserver:Lcom/sec/android/app/controlpanel/Observer;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/controlpanel/PackageInfo;->unregisterObserver(Lcom/sec/android/app/controlpanel/Observer;)V

    .line 117
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/controlpanel/StorageInfo;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/controlpanel/StorageInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->mStorageInfoObserver:Lcom/sec/android/app/controlpanel/Observer;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/controlpanel/StorageInfo;->unregisterObserver(Lcom/sec/android/app/controlpanel/Observer;)V

    .line 119
    invoke-virtual {p0, v2}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->removeDialog(I)V

    .line 120
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .parameter "menu"

    .prologue
    const/4 v0, 0x1

    .line 147
    const/16 v1, 0xb

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->mPackageInfoAdapter:Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->getCount()I

    move-result v2

    if-lez v2, :cond_1b

    :goto_13
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 149
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 147
    :cond_1b
    const/4 v0, 0x0

    goto :goto_13
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 99
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 101
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 102
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 103
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 105
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->mPkgInfo:Lcom/sec/android/app/controlpanel/PackageInfo;

    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->mAppInfoObserver:Lcom/sec/android/app/controlpanel/Observer;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/controlpanel/PackageInfo;->registerObserver(Lcom/sec/android/app/controlpanel/Observer;)V

    .line 106
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/controlpanel/StorageInfo;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/controlpanel/StorageInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->mStorageInfoObserver:Lcom/sec/android/app/controlpanel/Observer;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/controlpanel/StorageInfo;->registerObserver(Lcom/sec/android/app/controlpanel/Observer;)V

    .line 107
    return-void
.end method

.method protected onStart()V
    .registers 3

    .prologue
    .line 91
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 92
    invoke-super {p0}, Landroid/app/ListActivity;->onStart()V

    .line 93
    return-void
.end method

.method protected onStop()V
    .registers 1

    .prologue
    .line 126
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 127
    return-void
.end method
