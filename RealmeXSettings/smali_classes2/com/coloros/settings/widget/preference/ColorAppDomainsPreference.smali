.class public Lcom/coloros/settings/widget/preference/ColorAppDomainsPreference;
.super Lcom/android/settings/applications/AppDomainsPreference;
.source "ColorAppDomainsPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/AppDomainsPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x7f0d006f

    .line 26
    invoke-virtual {p0, p1}, Lcom/coloros/settings/widget/preference/ColorAppDomainsPreference;->setDialogLayoutResource(I)V

    const p1, 0x7f0d0070

    .line 1081
    iput p1, p0, Lcom/android/settings/accessibility/ListDialogPreference;->d:I

    return-void
.end method


# virtual methods
.method public getSummary()Ljava/lang/CharSequence;
    .locals 5

    .line 32
    invoke-virtual {p0}, Lcom/coloros/settings/widget/preference/ColorAppDomainsPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 33
    iget v1, p0, Lcom/coloros/settings/widget/preference/ColorAppDomainsPreference;->a:I

    if-nez v1, :cond_0

    const v1, 0x7f120851

    .line 34
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 39
    invoke-virtual {p0, v1}, Lcom/coloros/settings/widget/preference/ColorAppDomainsPreference;->a(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 41
    iget v3, p0, Lcom/coloros/settings/widget/preference/ColorAppDomainsPreference;->a:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    const v3, 0x7f120852

    goto :goto_0

    :cond_1
    const v3, 0x7f120853

    .line 44
    :goto_0
    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v1

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
