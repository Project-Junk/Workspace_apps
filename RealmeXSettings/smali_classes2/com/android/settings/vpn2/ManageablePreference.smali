.class public abstract Lcom/android/settings/vpn2/ManageablePreference;
.super Lcom/android/settings/widget/GearPreference;
.source "ManageablePreference.java"


# static fields
.field public static d:I = -0x1


# instance fields
.field e:Z

.field f:I

.field g:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/GearPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 36
    iput-boolean p1, p0, Lcom/android/settings/vpn2/ManageablePreference;->e:Z

    .line 37
    sget p2, Lcom/android/settings/vpn2/ManageablePreference;->d:I

    iput p2, p0, Lcom/android/settings/vpn2/ManageablePreference;->f:I

    .line 42
    invoke-virtual {p0, p1}, Lcom/android/settings/vpn2/ManageablePreference;->setPersistent(Z)V

    .line 43
    invoke-virtual {p0, p1}, Lcom/android/settings/vpn2/ManageablePreference;->setOrder(I)V

    .line 44
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/vpn2/ManageablePreference;->a(I)V

    return-void
.end method

.method private c()V
    .locals 6

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ManageablePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0300fa

    .line 87
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 88
    iget v2, p0, Lcom/android/settings/vpn2/ManageablePreference;->f:I

    sget v3, Lcom/android/settings/vpn2/ManageablePreference;->d:I

    if-ne v2, v3, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    aget-object v1, v1, v2

    .line 89
    :goto_0
    iget-boolean v2, p0, Lcom/android/settings/vpn2/ManageablePreference;->e:Z

    if-eqz v2, :cond_2

    const v2, 0x7f1218a3

    .line 90
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 91
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v1, v2

    goto :goto_1

    :cond_1
    const v3, 0x7f120b4f

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    invoke-virtual {v0, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 94
    :cond_2
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/settings/vpn2/ManageablePreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .line 52
    iput p1, p0, Lcom/android/settings/vpn2/ManageablePreference;->g:I

    const-string v0, "no_config_vpn"

    .line 53
    invoke-virtual {p0, v0, p1}, Lcom/android/settings/vpn2/ManageablePreference;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public final a(Z)V
    .locals 1

    .line 73
    iget-boolean v0, p0, Lcom/android/settings/vpn2/ManageablePreference;->e:Z

    if-eq v0, p1, :cond_0

    .line 74
    iput-boolean p1, p0, Lcom/android/settings/vpn2/ManageablePreference;->e:Z

    .line 75
    invoke-direct {p0}, Lcom/android/settings/vpn2/ManageablePreference;->c()V

    :cond_0
    return-void
.end method

.method public final b(I)V
    .locals 1

    .line 65
    iget v0, p0, Lcom/android/settings/vpn2/ManageablePreference;->f:I

    if-eq v0, p1, :cond_0

    .line 66
    iput p1, p0, Lcom/android/settings/vpn2/ManageablePreference;->f:I

    .line 67
    invoke-direct {p0}, Lcom/android/settings/vpn2/ManageablePreference;->c()V

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ManageablePreference;->notifyHierarchyChanged()V

    :cond_0
    return-void
.end method
