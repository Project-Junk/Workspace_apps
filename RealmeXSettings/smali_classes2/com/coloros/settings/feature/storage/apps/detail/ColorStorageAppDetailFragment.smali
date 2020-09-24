.class public Lcom/coloros/settings/feature/storage/apps/detail/ColorStorageAppDetailFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "ColorStorageAppDetailFragment.java"


# instance fields
.field private a:Lcom/coloros/settings/feature/storage/apps/usage/b;

.field private b:Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;

.field private c:Lcom/coloros/settings/feature/storage/apps/detail/a;

.field private d:Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailDataController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private a(I)V
    .locals 4

    .line 147
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorStorageAppDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/coloros/settings/feature/deviceinfo/f;->a(Landroid/content/Context;I)J

    move-result-wide v0

    .line 148
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorStorageAppDetailFragment;->a:Lcom/coloros/settings/feature/storage/apps/usage/b;

    iget-wide v2, p1, Lcom/coloros/settings/feature/storage/apps/usage/b;->l:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    .line 149
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorStorageAppDetailFragment;->a:Lcom/coloros/settings/feature/storage/apps/usage/b;

    iput-wide v0, p1, Lcom/coloros/settings/feature/storage/apps/usage/b;->l:J

    .line 150
    iget-wide v0, p1, Lcom/coloros/settings/feature/storage/apps/usage/b;->l:J

    iget-object v2, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorStorageAppDetailFragment;->a:Lcom/coloros/settings/feature/storage/apps/usage/b;

    iget-wide v2, v2, Lcom/coloros/settings/feature/storage/apps/usage/b;->k:J

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorStorageAppDetailFragment;->a:Lcom/coloros/settings/feature/storage/apps/usage/b;

    iget-wide v2, v2, Lcom/coloros/settings/feature/storage/apps/usage/b;->i:J

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorStorageAppDetailFragment;->a:Lcom/coloros/settings/feature/storage/apps/usage/b;

    iget-wide v2, v2, Lcom/coloros/settings/feature/storage/apps/usage/b;->j:J

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/coloros/settings/feature/storage/apps/usage/b;->m:J

    .line 152
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorStorageAppDetailFragment;->a:Lcom/coloros/settings/feature/storage/apps/usage/b;

    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorStorageAppDetailFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorStorageAppDetailFragment;->a:Lcom/coloros/settings/feature/storage/apps/usage/b;

    iget-wide v1, v1, Lcom/coloros/settings/feature/storage/apps/usage/b;->m:J

    invoke-static {v0, v1, v2}, Lcom/coloros/settings/utils/al;->b(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/coloros/settings/feature/storage/apps/usage/b;->f:Ljava/lang/String;

    .line 153
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorStorageAppDetailFragment;->b:Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;

    const/16 v0, 0x70

    .line 4164
    iput v0, p1, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->a:I

    .line 154
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorStorageAppDetailFragment;->d:Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailDataController;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailDataController;->a()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "StorageAppDetailFragment"

    return-object v0
.end method

.method public final a(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/a;",
            ">;"
        }
    .end annotation

    .line 95
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 96
    new-instance v0, Lcom/coloros/settings/feature/storage/apps/detail/a;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/apps/detail/ColorStorageAppDetailFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorStorageAppDetailFragment;->a:Lcom/coloros/settings/feature/storage/apps/usage/b;

    invoke-direct {v0, v1, v2}, Lcom/coloros/settings/feature/storage/apps/detail/a;-><init>(Landroid/content/Context;Lcom/coloros/settings/feature/storage/apps/usage/b;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorStorageAppDetailFragment;->c:Lcom/coloros/settings/feature/storage/apps/detail/a;

    .line 97
    new-instance v0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailDataController;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/apps/detail/ColorStorageAppDetailFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorStorageAppDetailFragment;->a:Lcom/coloros/settings/feature/storage/apps/usage/b;

    invoke-direct {v0, v1, v2}, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailDataController;-><init>(Landroid/app/Activity;Lcom/coloros/settings/feature/storage/apps/usage/b;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorStorageAppDetailFragment;->d:Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailDataController;

    .line 98
    new-instance v0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/apps/detail/ColorStorageAppDetailFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorStorageAppDetailFragment;->a:Lcom/coloros/settings/feature/storage/apps/usage/b;

    invoke-direct {v0, v1, v2}, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;-><init>(Landroid/app/Activity;Lcom/coloros/settings/feature/storage/apps/usage/b;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorStorageAppDetailFragment;->b:Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;

    .line 99
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorStorageAppDetailFragment;->c:Lcom/coloros/settings/feature/storage/apps/detail/a;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorStorageAppDetailFragment;->d:Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailDataController;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorStorageAppDetailFragment;->b:Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method final c()V
    .locals 5

    .line 159
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorStorageAppDetailFragment;->b:Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;

    .line 5160
    iget v0, v0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->a:I

    .line 160
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 161
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 162
    iget-object v3, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorStorageAppDetailFragment;->a:Lcom/coloros/settings/feature/storage/apps/usage/b;

    const-string v4, "operation_remain_storage"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v3, "operation_type"

    .line 163
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 164
    iget-object v3, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorStorageAppDetailFragment;->a:Lcom/coloros/settings/feature/storage/apps/usage/b;

    iget-object v3, v3, Lcom/coloros/settings/feature/storage/apps/usage/b;->b:Ljava/lang/String;

    const-string v4, "package_name"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "result_bundle"

    .line 165
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 166
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "type = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "  packageName = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorStorageAppDetailFragment;->a:Lcom/coloros/settings/feature/storage/apps/usage/b;

    iget-object v0, v0, Lcom/coloros/settings/feature/storage/apps/usage/b;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " mAppDataHolder = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorStorageAppDetailFragment;->a:Lcom/coloros/settings/feature/storage/apps/usage/b;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "StorageAppDetailFragment"

    invoke-static {v2, v0}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 168
    invoke-virtual {p0, v0, v1}, Lcom/coloros/settings/feature/storage/apps/detail/ColorStorageAppDetailFragment;->setResult(ILandroid/content/Intent;)V

    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0xfa

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f150017

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const-string p2, "StorageAppDetailFragment"

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    const-string p1, "onActivityResult START_ACTIVITY_VIDEO_MEDIA_FOR_RESULT"

    .line 138
    invoke-static {p2, p1}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x4

    .line 139
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/storage/apps/detail/ColorStorageAppDetailFragment;->a(I)V

    goto/16 :goto_0

    :pswitch_2
    const-string p1, "onActivityResult START_ACTIVITY_IMAGES_MEDIA_FOR_RESULT"

    .line 134
    invoke-static {p2, p1}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 135
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/storage/apps/detail/ColorStorageAppDetailFragment;->a(I)V

    return-void

    :pswitch_3
    const-string p1, "onActivityResult START_ACTIVITY_AUDIO_MEDIA_FOR_RESULT"

    .line 130
    invoke-static {p2, p1}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x2

    .line 131
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/storage/apps/detail/ColorStorageAppDetailFragment;->a(I)V

    return-void

    :pswitch_4
    const-string p1, "onActivityResult START_ACTIVITY_UNINSTALL_FOR_RESULT"

    .line 109
    invoke-static {p2, p1}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :try_start_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/apps/detail/ColorStorageAppDetailFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object p3, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorStorageAppDetailFragment;->a:Lcom/coloros/settings/feature/storage/apps/usage/b;

    iget-object p3, p3, Lcom/coloros/settings/feature/storage/apps/usage/b;->b:Ljava/lang/String;

    const/16 v0, 0x2200

    invoke-virtual {p1, p3, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    const-string p3, "onActivityResult ainfo found and do nothing!  ainfo = "

    .line 115
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 118
    :catch_0
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorStorageAppDetailFragment;->a:Lcom/coloros/settings/feature/storage/apps/usage/b;

    iget-object p1, p1, Lcom/coloros/settings/feature/storage/apps/usage/b;->b:Ljava/lang/String;

    const-string p2, "com.tencent.tvoem"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 119
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorStorageAppDetailFragment;->a:Lcom/coloros/settings/feature/storage/apps/usage/b;

    iget-wide p2, p1, Lcom/coloros/settings/feature/storage/apps/usage/b;->m:J

    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorStorageAppDetailFragment;->a:Lcom/coloros/settings/feature/storage/apps/usage/b;

    iget-wide v0, v0, Lcom/coloros/settings/feature/storage/apps/usage/b;->i:J

    sub-long/2addr p2, v0

    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorStorageAppDetailFragment;->a:Lcom/coloros/settings/feature/storage/apps/usage/b;

    iget-wide v0, v0, Lcom/coloros/settings/feature/storage/apps/usage/b;->j:J

    add-long/2addr p2, v0

    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorStorageAppDetailFragment;->a:Lcom/coloros/settings/feature/storage/apps/usage/b;

    iget-wide v0, v0, Lcom/coloros/settings/feature/storage/apps/usage/b;->k:J

    sub-long/2addr p2, v0

    iput-wide p2, p1, Lcom/coloros/settings/feature/storage/apps/usage/b;->m:J

    .line 121
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorStorageAppDetailFragment;->a:Lcom/coloros/settings/feature/storage/apps/usage/b;

    iget-object p2, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorStorageAppDetailFragment;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorStorageAppDetailFragment;->a:Lcom/coloros/settings/feature/storage/apps/usage/b;

    iget-wide v0, p3, Lcom/coloros/settings/feature/storage/apps/usage/b;->m:J

    invoke-static {p2, v0, v1}, Lcom/coloros/settings/utils/al;->b(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/coloros/settings/feature/storage/apps/usage/b;->f:Ljava/lang/String;

    .line 124
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorStorageAppDetailFragment;->b:Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;

    iget-object p2, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorStorageAppDetailFragment;->a:Lcom/coloros/settings/feature/storage/apps/usage/b;

    iget-object p2, p2, Lcom/coloros/settings/feature/storage/apps/usage/b;->b:Ljava/lang/String;

    const/16 p3, 0x6f

    .line 2164
    iput p3, p1, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->a:I

    .line 1306
    iget-object p1, p1, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->b:Lcom/coloros/settings/feature/storage/apps/usage/a;

    .line 2567
    iget-object p1, p1, Lcom/coloros/settings/feature/storage/apps/usage/a;->c:Lcom/coloros/settings/feature/storage/apps/usage/a/a;

    const/4 p3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/coloros/settings/feature/storage/apps/usage/a/a;->a(ILjava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/apps/detail/ColorStorageAppDetailFragment;->c()V

    .line 126
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/apps/detail/ColorStorageAppDetailFragment;->finish()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x35
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 61
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/apps/detail/ColorStorageAppDetailFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "appDataHolder"

    .line 63
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/feature/storage/apps/usage/b;

    iput-object v0, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorStorageAppDetailFragment;->a:Lcom/coloros/settings/feature/storage/apps/usage/b;

    .line 65
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 66
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorStorageAppDetailFragment;->a:Lcom/coloros/settings/feature/storage/apps/usage/b;

    if-nez p1, :cond_1

    const-string p1, "StorageAppDetailFragment"

    const-string v0, "appDataHolder is null return"

    .line 67
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/apps/detail/ColorStorageAppDetailFragment;->finishFragment()V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 74
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 75
    const-class p1, Lcom/coloros/settings/feature/storage/apps/detail/ColorStorageAppDetailFragment;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    return-void
.end method
