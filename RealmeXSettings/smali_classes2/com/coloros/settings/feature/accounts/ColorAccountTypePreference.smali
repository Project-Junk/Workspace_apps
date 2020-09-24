.class public Lcom/coloros/settings/feature/accounts/ColorAccountTypePreference;
.super Lcom/android/settings/accounts/AccountTypePreference;
.source "ColorAccountTypePreference.java"


# instance fields
.field g:Ljava/lang/String;

.field h:Landroid/accounts/Account;


# direct methods
.method private constructor <init>(Landroid/content/Context;ILandroid/accounts/Account;Ljava/lang/String;ILjava/lang/CharSequence;Ljava/lang/String;Landroid/os/Bundle;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 39
    invoke-direct/range {p0 .. p9}, Lcom/android/settings/accounts/AccountTypePreference;-><init>(Landroid/content/Context;ILandroid/accounts/Account;Ljava/lang/String;ILjava/lang/CharSequence;Ljava/lang/String;Landroid/os/Bundle;Landroid/graphics/drawable/Drawable;)V

    .line 41
    iput-object p3, p0, Lcom/coloros/settings/feature/accounts/ColorAccountTypePreference;->h:Landroid/accounts/Account;

    const p2, 0x7f0d00a7

    .line 42
    invoke-virtual {p0, p2}, Lcom/coloros/settings/feature/accounts/ColorAccountTypePreference;->setLayoutResource(I)V

    const p2, 0x7f0d00c4

    .line 43
    invoke-virtual {p0, p2}, Lcom/coloros/settings/feature/accounts/ColorAccountTypePreference;->setWidgetLayoutResource(I)V

    .line 44
    invoke-static {p1, p9}, Lcom/coloros/settings/utils/af;->b(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/accounts/ColorAccountTypePreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/accounts/Account;Ljava/lang/String;ILjava/lang/CharSequence;Ljava/lang/String;Landroid/os/Bundle;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0

    .line 50
    invoke-direct/range {p0 .. p9}, Lcom/coloros/settings/feature/accounts/ColorAccountTypePreference;-><init>(Landroid/content/Context;ILandroid/accounts/Account;Ljava/lang/String;ILjava/lang/CharSequence;Ljava/lang/String;Landroid/os/Bundle;Landroid/graphics/drawable/Drawable;)V

    .line 52
    iput-object p10, p0, Lcom/coloros/settings/feature/accounts/ColorAccountTypePreference;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/CharSequence;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/coloros/settings/feature/accounts/ColorAccountTypePreference;->b:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 73
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/accounts/ColorAccountTypePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 74
    iput-object p1, p0, Lcom/coloros/settings/feature/accounts/ColorAccountTypePreference;->a:Ljava/lang/CharSequence;

    .line 75
    iput-object p2, p0, Lcom/coloros/settings/feature/accounts/ColorAccountTypePreference;->c:Ljava/lang/String;

    .line 76
    iput-object p3, p0, Lcom/coloros/settings/feature/accounts/ColorAccountTypePreference;->d:Landroid/os/Bundle;

    return-void
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    const-string v0, ""

    return-object v0
.end method
