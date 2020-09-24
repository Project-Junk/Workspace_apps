.class public Lcom/android/settings/accounts/AccountPreference;
.super Landroidx/preference/Preference;
.source "AccountPreference.java"


# instance fields
.field public a:Landroid/accounts/Account;

.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:Landroid/widget/ImageView;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/accounts/Account;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 51
    iput-object p2, p0, Lcom/android/settings/accounts/AccountPreference;->a:Landroid/accounts/Account;

    .line 52
    iput-object p3, p0, Lcom/android/settings/accounts/AccountPreference;->b:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 53
    iput-boolean p1, p0, Lcom/android/settings/accounts/AccountPreference;->e:Z

    const/4 p2, 0x1

    .line 57
    invoke-static {p2}, Lcom/android/settings/accounts/AccountPreference;->b(I)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/android/settings/accounts/AccountPreference;->setIcon(I)V

    .line 59
    iget-object p3, p0, Lcom/android/settings/accounts/AccountPreference;->a:Landroid/accounts/Account;

    iget-object p3, p3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p0, p3}, Lcom/android/settings/accounts/AccountPreference;->setTitle(Ljava/lang/CharSequence;)V

    const-string p3, ""

    .line 60
    invoke-virtual {p0, p3}, Lcom/android/settings/accounts/AccountPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 61
    invoke-virtual {p0, p1}, Lcom/android/settings/accounts/AccountPreference;->setPersistent(Z)V

    .line 62
    invoke-virtual {p0, p2, p1}, Lcom/android/settings/accounts/AccountPreference;->a(IZ)V

    return-void
.end method

.method private static a(I)I
    .locals 2

    const v0, 0x7f121645

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_3

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    .line 115
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Unknown sync status: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "AccountPreference"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const v0, 0x7f121648

    goto :goto_0

    :cond_1
    const v0, 0x7f121643

    goto :goto_0

    :cond_2
    const v0, 0x7f121644

    :cond_3
    :goto_0
    return v0
.end method

.method private static b(I)I
    .locals 2

    const v0, 0x7f080864

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_2

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    .line 135
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Unknown sync status: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "AccountPreference"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const v0, 0x7f080862

    goto :goto_0

    :cond_1
    const v0, 0x7f080841

    :cond_2
    :goto_0
    return v0
.end method

.method private c(I)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    const v1, 0x7f120095

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 151
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Unknown sync status: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "AccountPreference"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 149
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f120096

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 147
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 145
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f120093

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 143
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f120094

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final a(IZ)V
    .locals 2

    .line 84
    iget v0, p0, Lcom/android/settings/accounts/AccountPreference;->c:I

    if-ne v0, p1, :cond_0

    const-string p1, "AccountPreference"

    const-string p2, "Status is the same, not changing anything"

    .line 85
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 88
    :cond_0
    iput p1, p0, Lcom/android/settings/accounts/AccountPreference;->c:I

    .line 89
    iget-boolean v0, p0, Lcom/android/settings/accounts/AccountPreference;->e:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreference;->d:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 90
    invoke-static {p1}, Lcom/android/settings/accounts/AccountPreference;->b(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 91
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreference;->d:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/settings/accounts/AccountPreference;->c:I

    invoke-direct {p0, v1}, Lcom/android/settings/accounts/AccountPreference;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    if-eqz p2, :cond_2

    .line 94
    invoke-static {p1}, Lcom/android/settings/accounts/AccountPreference;->a(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/accounts/AccountPreference;->setSummary(I)V

    :cond_2
    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 75
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 76
    iget-boolean v0, p0, Lcom/android/settings/accounts/AccountPreference;->e:Z

    if-nez v0, :cond_0

    const v0, 0x1020006

    .line 77
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/accounts/AccountPreference;->d:Landroid/widget/ImageView;

    .line 78
    iget-object p1, p0, Lcom/android/settings/accounts/AccountPreference;->d:Landroid/widget/ImageView;

    iget v0, p0, Lcom/android/settings/accounts/AccountPreference;->c:I

    invoke-static {v0}, Lcom/android/settings/accounts/AccountPreference;->b(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 79
    iget-object p1, p0, Lcom/android/settings/accounts/AccountPreference;->d:Landroid/widget/ImageView;

    iget v0, p0, Lcom/android/settings/accounts/AccountPreference;->c:I

    invoke-direct {p0, v0}, Lcom/android/settings/accounts/AccountPreference;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
