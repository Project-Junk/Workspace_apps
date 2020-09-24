.class public Lcom/android/settings/accounts/AccountTypePreference;
.super Lcom/android/settingslib/widget/apppreference/AppPreference;
.source "AccountTypePreference.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field protected a:Ljava/lang/CharSequence;

.field protected final b:Ljava/lang/CharSequence;

.field protected c:Ljava/lang/String;

.field protected d:Landroid/os/Bundle;

.field private final g:Ljava/lang/String;

.field private final h:I

.field private final i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/accounts/Account;Ljava/lang/String;ILjava/lang/CharSequence;Ljava/lang/String;Landroid/os/Bundle;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/android/settingslib/widget/apppreference/AppPreference;-><init>(Landroid/content/Context;)V

    .line 79
    iget-object p1, p3, Landroid/accounts/Account;->name:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/accounts/AccountTypePreference;->a:Ljava/lang/CharSequence;

    .line 80
    iput-object p4, p0, Lcom/android/settings/accounts/AccountTypePreference;->g:Ljava/lang/String;

    .line 81
    iput p5, p0, Lcom/android/settings/accounts/AccountTypePreference;->h:I

    .line 82
    iput-object p6, p0, Lcom/android/settings/accounts/AccountTypePreference;->b:Ljava/lang/CharSequence;

    .line 83
    iput-object p7, p0, Lcom/android/settings/accounts/AccountTypePreference;->c:Ljava/lang/String;

    .line 84
    iput-object p8, p0, Lcom/android/settings/accounts/AccountTypePreference;->d:Landroid/os/Bundle;

    .line 85
    iput p2, p0, Lcom/android/settings/accounts/AccountTypePreference;->i:I

    .line 1123
    invoke-virtual {p3}, Landroid/accounts/Account;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 87
    invoke-virtual {p0, p1}, Lcom/android/settings/accounts/AccountTypePreference;->setKey(Ljava/lang/String;)V

    .line 88
    iget-object p1, p0, Lcom/android/settings/accounts/AccountTypePreference;->a:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/android/settings/accounts/AccountTypePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 89
    invoke-virtual {p0, p6}, Lcom/android/settings/accounts/AccountTypePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 90
    invoke-virtual {p0, p9}, Lcom/android/settings/accounts/AccountTypePreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 92
    invoke-virtual {p0, p0}, Lcom/android/settings/accounts/AccountTypePreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method public static a(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 0

    .line 123
    invoke-virtual {p0}, Landroid/accounts/Account;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/android/settings/accounts/AccountTypePreference;->b:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/android/settings/accounts/AccountTypePreference;->a:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 4

    .line 97
    iget-object p1, p0, Lcom/android/settings/accounts/AccountTypePreference;->c:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountTypePreference;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    .line 100
    iget-object v0, p0, Lcom/android/settings/accounts/AccountTypePreference;->d:Landroid/os/Bundle;

    const-string v1, "android.intent.extra.USER"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountTypePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 102
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 101
    invoke-static {v2, p1, v3}, Lcom/android/settings/m;->a(Landroid/content/Context;Landroid/os/UserManager;I)Z

    move-result p1

    if-eqz p1, :cond_0

    return v1

    :cond_0
    if-eqz v0, :cond_1

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountTypePreference;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 105
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 104
    invoke-static {p1, v0}, Lcom/android/settings/m;->d(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    .line 108
    :cond_1
    new-instance p1, Lcom/android/settings/core/f;

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountTypePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settings/core/f;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/settings/accounts/AccountTypePreference;->c:Ljava/lang/String;

    .line 109
    invoke-virtual {p1, v0}, Lcom/android/settings/core/f;->a(Ljava/lang/String;)Lcom/android/settings/core/f;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/accounts/AccountTypePreference;->d:Landroid/os/Bundle;

    .line 110
    invoke-virtual {p1, v0}, Lcom/android/settings/core/f;->a(Landroid/os/Bundle;)Lcom/android/settings/core/f;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/accounts/AccountTypePreference;->g:Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/accounts/AccountTypePreference;->h:I

    .line 111
    invoke-virtual {p1, v0, v2}, Lcom/android/settings/core/f;->a(Ljava/lang/String;I)Lcom/android/settings/core/f;

    move-result-object p1

    iget v0, p0, Lcom/android/settings/accounts/AccountTypePreference;->i:I

    .line 112
    invoke-virtual {p1, v0}, Lcom/android/settings/core/f;->a(I)Lcom/android/settings/core/f;

    move-result-object p1

    .line 113
    invoke-virtual {p1}, Lcom/android/settings/core/f;->a()V

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method