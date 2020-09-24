.class final Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings$b;
.super Landroid/widget/BaseAdapter;
.source "ColorDeviceAdminSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final a:Landroid/view/LayoutInflater;

.field final synthetic b:Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;)V
    .locals 1

    .line 280
    iput-object p1, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings$b;->b:Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 282
    invoke-virtual {p1}, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings$b;->a:Landroid/view/LayoutInflater;

    return-void
.end method

.method private a(Ljava/lang/Object;)Z
    .locals 3

    .line 338
    check-cast p1, Landroid/app/admin/DeviceAdminInfo;

    .line 340
    iget-object v0, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings$b;->b:Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;

    invoke-static {v0, p1}, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;->a(Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;Landroid/app/admin/DeviceAdminInfo;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;->a(Landroid/app/admin/DeviceAdminInfo;)I

    move-result v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings$b;->b:Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;

    .line 341
    invoke-static {v0, p1}, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;->b(Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;Landroid/app/admin/DeviceAdminInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings$b;->b:Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;

    invoke-static {v0, p1}, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;->c(Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;Landroid/app/admin/DeviceAdminInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return v1

    .line 345
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings$b;->b:Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;

    invoke-static {v0, p1}, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;->d(Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;Landroid/app/admin/DeviceAdminInfo;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings$b;->b:Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;

    invoke-static {v0, p1}, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;->e(Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;Landroid/app/admin/DeviceAdminInfo;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_0
    return v1
.end method


# virtual methods
.method public final areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getCount()I
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings$b;->b:Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;

    invoke-static {v0}, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;->b(Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings$b;->b:Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;

    invoke-static {v0}, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;->b(Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings$a;

    iget-object p1, p1, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings$a;->a:Landroid/app/admin/DeviceAdminInfo;

    return-object p1
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .line 353
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings$b;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 1363
    iget-object p2, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings$b;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f0d0082

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 1364
    new-instance p3, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings$c;

    invoke-direct {p3}, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings$c;-><init>()V

    const v1, 0x7f0a030f

    .line 1365
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p3, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings$c;->a:Landroid/widget/ImageView;

    const v1, 0x7f0a0442

    .line 1366
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p3, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings$c;->b:Landroid/widget/TextView;

    const v1, 0x7f0a015e

    .line 1367
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p3, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings$c;->c:Landroid/widget/CheckBox;

    const v1, 0x7f0a01e3

    .line 1368
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p3, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings$c;->d:Landroid/widget/TextView;

    const v1, 0x7f0a0056

    .line 1369
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p3, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings$c;->e:Landroid/widget/TextView;

    .line 1370
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 357
    :cond_0
    check-cast p1, Landroid/app/admin/DeviceAdminInfo;

    .line 1375
    iget-object p3, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings$b;->b:Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;

    invoke-virtual {p3}, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    .line 1376
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings$c;

    .line 1377
    invoke-virtual {p3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/app/admin/DeviceAdminInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1378
    invoke-virtual {p3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    new-instance v4, Landroid/os/UserHandle;

    .line 1379
    invoke-static {p1}, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;->a(Landroid/app/admin/DeviceAdminInfo;)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    .line 1378
    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1380
    iget-object v3, v1, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings$c;->a:Landroid/widget/ImageView;

    invoke-static {p3, v2}, Lcom/coloros/settings/utils/af;->a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1381
    iget-object v2, v1, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings$c;->b:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/app/admin/DeviceAdminInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1382
    iget-object v2, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings$b;->b:Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;

    invoke-static {v2, p1}, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;->a(Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;Landroid/app/admin/DeviceAdminInfo;)Z

    move-result v2

    .line 1383
    iget-object v3, v1, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings$c;->c:Landroid/widget/CheckBox;

    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1384
    iget-object v3, v1, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings$c;->e:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    const v2, 0x7f12076f

    goto :goto_0

    :cond_1
    const v2, 0x7f120770

    :goto_0
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1386
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings$b;->a(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    .line 1389
    :try_start_0
    invoke-virtual {p3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/app/admin/DeviceAdminInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1392
    :catch_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1393
    iget-object p1, v1, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings$c;->d:Landroid/widget/TextView;

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 1395
    :cond_2
    iget-object p1, v1, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings$c;->d:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1396
    iget-object p1, v1, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings$c;->d:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1398
    :goto_1
    iget-object p1, v1, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings$c;->c:Landroid/widget/CheckBox;

    invoke-virtual {p1, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 1399
    iget-object p1, v1, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings$c;->b:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1400
    iget-object p1, v1, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings$c;->d:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1401
    iget-object p1, v1, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings$c;->a:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    const p1, 0x7f08043f

    .line 358
    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundResource(I)V

    return-object p2
.end method

.method public final getViewTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final hasStableIds()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isEnabled(I)Z
    .locals 0

    .line 333
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings$b;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    .line 334
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings$b;->a(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
