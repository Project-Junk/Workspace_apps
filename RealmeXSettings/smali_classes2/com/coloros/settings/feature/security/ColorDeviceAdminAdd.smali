.class public Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;
.super Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;
.source "ColorDeviceAdminAdd.java"


# instance fields
.field A:Z

.field private B:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private C:Lcom/coloros/settings/utils/bn;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;)Landroid/widget/Button;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;->q:Landroid/widget/Button;

    return-object p0
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 0

    .line 163
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;->finish()V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;Ljava/lang/CharSequence;)V
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;Ljava/lang/String;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .line 246
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 247
    iget-object v1, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;->d:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v1}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "package_name"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "event_tag"

    .line 248
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "20012"

    const-string v1, "force_lock_prompt"

    .line 249
    invoke-static {p0, p1, v1, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;Landroid/app/admin/DeviceAdminInfo;)Z
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;->a(Landroid/app/admin/DeviceAdminInfo;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;)V
    .locals 0

    .line 53
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;->a()V

    return-void
.end method

.method static synthetic c(Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;)Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;->u:Z

    return p0
.end method

.method static synthetic d(Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;)V
    .locals 3

    .line 3216
    new-instance v0, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1200fc

    .line 3217
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    const v1, 0x7f0d0033

    .line 3218
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setView(I)Lcolor/support/v7/app/AlertDialog$Builder;

    const v1, 0x7f1200fa

    .line 3219
    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd$4;

    invoke-direct {v2, p0}, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd$4;-><init>(Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;)V

    invoke-virtual {v0, v1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    const/high16 v1, 0x1040000

    .line 3227
    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd$5;

    invoke-direct {v2, p0}, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd$5;-><init>(Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;)V

    invoke-virtual {v0, v1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 3234
    new-instance v1, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd$6;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd$6;-><init>(Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;)V

    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    const/4 v1, 0x1

    .line 3240
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Lcolor/support/v7/app/AlertDialog$Builder;

    const-string v1, "show_dialog"

    .line 3241
    invoke-direct {p0, v1}, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;->a(Ljava/lang/String;)V

    .line 3242
    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Lcolor/support/v7/app/AlertDialog;->show()V

    return-void
.end method

.method static synthetic e(Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;)V
    .locals 0

    .line 53
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;->b()V

    return-void
.end method

.method static synthetic f(Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;)Landroid/app/admin/DeviceAdminInfo;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;->d:Landroid/app/admin/DeviceAdminInfo;

    return-object p0
.end method

.method static synthetic g(Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;)Landroid/app/admin/DeviceAdminInfo;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;->d:Landroid/app/admin/DeviceAdminInfo;

    return-object p0
.end method

.method static synthetic h(Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;)Landroid/app/admin/DevicePolicyManager;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;->b:Landroid/app/admin/DevicePolicyManager;

    return-object p0
.end method

.method static synthetic i(Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;)Landroid/app/admin/DeviceAdminInfo;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;->d:Landroid/app/admin/DeviceAdminInfo;

    return-object p0
.end method

.method static synthetic j(Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;)Z
    .locals 0

    .line 53
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;->d()Z

    move-result p0

    return p0
.end method

.method static synthetic k(Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;)Lcom/android/settingslib/g$a;
    .locals 0

    .line 53
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;->c()Lcom/android/settingslib/g$a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic l(Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;)Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;->t:Z

    return p0
.end method

.method public static synthetic lambda$foqWvvzb0VkO5qc4EnCnROE8CnE(Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic m(Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;)Landroid/app/admin/DeviceAdminInfo;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;->d:Landroid/app/admin/DeviceAdminInfo;

    return-object p0
.end method

.method static synthetic n(Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;)Landroid/app/admin/DevicePolicyManager;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;->b:Landroid/app/admin/DevicePolicyManager;

    return-object p0
.end method

.method static synthetic o(Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;)Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;->w:Z

    return p0
.end method

.method static synthetic p(Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;)Z
    .locals 1

    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;->w:Z

    return v0
.end method

.method static synthetic q(Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;)Landroid/app/admin/DeviceAdminInfo;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;->d:Landroid/app/admin/DeviceAdminInfo;

    return-object p0
.end method

.method static synthetic r(Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;)Landroid/os/Handler;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;->a:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic s(Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;)Landroid/app/admin/DevicePolicyManager;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;->b:Landroid/app/admin/DevicePolicyManager;

    return-object p0
.end method

.method static synthetic t(Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;)V
    .locals 1

    const/4 v0, 0x0

    .line 53
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic u(Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;)Landroid/widget/Button;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;->q:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic v(Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;)Lcom/coloros/settings/utils/bn;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;->C:Lcom/coloros/settings/utils/bn;

    return-object p0
.end method

.method static synthetic w(Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;)V
    .locals 0

    .line 53
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;->b()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 14

    const/4 v0, 0x0

    .line 254
    iput-boolean v0, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;->A:Z

    .line 255
    iget-boolean v1, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;->y:Z

    if-nez v1, :cond_7

    .line 256
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v1

    .line 259
    iget-object v2, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;->d:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v2}, Landroid/app/admin/DeviceAdminInfo;->getUsedPolicies()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v0

    move v4, v3

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    if-eqz v1, :cond_0

    .line 260
    iget v7, v5, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->description:I

    goto :goto_1

    :cond_0
    iget v7, v5, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->descriptionForSecondaryUsers:I

    :goto_1
    if-eqz v1, :cond_1

    .line 261
    iget v8, v5, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->label:I

    goto :goto_2

    :cond_1
    iget v8, v5, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->labelForSecondaryUsers:I

    .line 262
    :goto_2
    invoke-virtual {p0, v8}, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    if-eqz p1, :cond_2

    .line 263
    invoke-virtual {p0, v7}, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    goto :goto_3

    :cond_2
    const-string v7, ""

    :goto_3
    const-string v9, "layout_inflater"

    .line 3042
    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;

    const v10, 0x7f080867

    .line 3045
    invoke-virtual {p0, v10}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    const v11, 0x7f0d0073

    const/4 v12, 0x0

    .line 3054
    invoke-virtual {v9, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    const v11, 0x7f0a04d4

    .line 3056
    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    const v12, 0x7f0a04d5

    .line 3057
    invoke-virtual {v9, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    const v13, 0x7f0a04ca

    .line 3059
    invoke-virtual {v9, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    .line 3060
    invoke-virtual {v13, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v8, :cond_3

    .line 3062
    invoke-virtual {v11, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3063
    invoke-virtual {v12, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 3065
    :cond_3
    invoke-virtual {v11, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v7, 0x8

    .line 3066
    invoke-virtual {v12, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 264
    :goto_4
    iget v5, v5, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->ident:I

    const/4 v7, 0x3

    if-ne v5, v7, :cond_4

    move v3, v6

    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 268
    iget-object v5, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;->p:Landroid/view/ViewGroup;

    invoke-virtual {v5, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 270
    :cond_5
    iput-boolean v6, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;->y:Z

    if-eqz v3, :cond_6

    if-ne v4, v6, :cond_6

    .line 271
    iget-object p1, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;->d:Landroid/app/admin/DeviceAdminInfo;

    .line 272
    invoke-virtual {p1}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.coloros.onekeylockscreen"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    move v0, v6

    :cond_6
    iput-boolean v0, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;->A:Z

    :cond_7
    return-void
.end method

.method public final f()I
    .locals 1

    const v0, 0x7f0d0081

    return v0
.end method

.method public final g()Z
    .locals 3

    .line 291
    iget-object v0, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;->d:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 292
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;->B:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;->a(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    if-eqz v0, :cond_1

    .line 296
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 297
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "package_name "

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "20012"

    const-string v2, "device_administrator_package"

    .line 298
    invoke-static {p0, v0, v2, v1}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 62
    invoke-super {p0, p1}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x80000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addPrivateFlags(I)V

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 64
    invoke-static {p0, v0, p1}, Lcom/coloros/settings/utils/al;->a(Landroid/app/Activity;ZZ)V

    const v0, 0x7f0a015f

    .line 66
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz v0, :cond_0

    const v1, 0x7f0804bb

    .line 68
    invoke-virtual {v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setStatusBarBackgroundResource(I)V

    :cond_0
    const-string v0, "device_administrator"

    .line 71
    invoke-static {p0, v0}, Lcom/coloros/settings/romupdate/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;->B:Ljava/util/ArrayList;

    const v0, 0x7f0a056a

    .line 73
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 77
    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->setFilterTouchesWhenObscured(Z)V

    .line 78
    new-instance v1, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd$1;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd$1;-><init>(Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    new-instance v0, Lcom/coloros/settings/utils/bn;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/coloros/settings/utils/bn;-><init>(Landroid/app/Activity;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;->C:Lcom/coloros/settings/utils/bn;

    const v0, 0x7f0a070a

    .line 158
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcolor/support/v7/widget/Toolbar;

    if-nez v0, :cond_2

    return-void

    .line 162
    :cond_2
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 163
    new-instance v1, Lcom/coloros/settings/feature/security/-$$Lambda$ColorDeviceAdminAdd$foqWvvzb0VkO5qc4EnCnROE8CnE;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/security/-$$Lambda$ColorDeviceAdminAdd$foqWvvzb0VkO5qc4EnCnROE8CnE;-><init>(Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;)V

    invoke-virtual {v0, v1}, Lcolor/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    .line 165
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 167
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f050063

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_3

    const p1, 0x7f0a020e

    .line 168
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    const/16 v0, 0x8

    .line 170
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 177
    invoke-super {p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->onResume()V

    .line 1182
    iget-object v0, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;->C:Lcom/coloros/settings/utils/bn;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coloros/settings/utils/bn;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1183
    iget-object v0, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;->C:Lcom/coloros/settings/utils/bn;

    new-instance v1, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd$2;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd$2;-><init>(Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;)V

    .line 2056
    iput-object v1, v0, Lcom/coloros/settings/utils/bn;->b:Lcom/coloros/settings/utils/bn$a;

    .line 1199
    iget-object v0, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;->q:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1200
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd$3;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd$3;-><init>(Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final toggleMessageEllipsis(Landroid/view/View;)V
    .locals 1

    .line 278
    invoke-super {p0, p1}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->toggleMessageEllipsis(Landroid/view/View;)V

    .line 279
    iget-object p1, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;->l:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;->m:Z

    if-eqz v0, :cond_0

    const-string v0, "com.android.internal.R.drawable.expander_ic_minimized"

    .line 280
    invoke-static {v0}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const-string v0, "com.android.internal.R.drawable.expander_ic_maximized"

    .line 281
    invoke-static {v0}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 279
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
