.class public Lcom/android/settings/datausage/DataUsagePreference;
.super Landroidx/preference/Preference;
.source "DataUsagePreference.java"

# interfaces
.implements Lcom/android/settings/datausage/g;


# instance fields
.field private a:Landroid/net/NetworkTemplate;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 42
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    .line 43
    new-array v0, v0, [I

    const-string v1, "com.android.internal.R.attr.title"

    .line 44
    invoke-static {v1}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const v1, 0x7f0404a8

    const v3, 0x101008e

    .line 45
    invoke-static {p1, v1, v3}, Landroidx/core/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v1

    .line 43
    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 48
    invoke-virtual {p1, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/android/settings/datausage/DataUsagePreference;->c:I

    .line 49
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/net/NetworkTemplate;ILcom/android/settings/datausage/g$a;)V
    .locals 7

    .line 54
    iput-object p1, p0, Lcom/android/settings/datausage/DataUsagePreference;->a:Landroid/net/NetworkTemplate;

    .line 55
    iput p2, p0, Lcom/android/settings/datausage/DataUsagePreference;->b:I

    .line 1098
    new-instance p2, Lcom/android/settingslib/net/a;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsagePreference;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/android/settingslib/net/a;-><init>(Landroid/content/Context;)V

    .line 57
    iget-object p3, p0, Lcom/android/settings/datausage/DataUsagePreference;->a:Landroid/net/NetworkTemplate;

    invoke-virtual {p3}, Landroid/net/NetworkTemplate;->isMatchRuleMobile()Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    const p3, 0x7f1201b9

    .line 58
    invoke-virtual {p0, p3}, Lcom/android/settings/datausage/DataUsagePreference;->setTitle(I)V

    goto :goto_0

    .line 60
    :cond_0
    iget-object p3, p0, Lcom/android/settings/datausage/DataUsagePreference;->a:Landroid/net/NetworkTemplate;

    .line 61
    invoke-virtual {p2, p3}, Lcom/android/settingslib/net/a;->a(Landroid/net/NetworkTemplate;)Lcom/android/settingslib/net/a$a;

    move-result-object p3

    .line 62
    iget v1, p0, Lcom/android/settings/datausage/DataUsagePreference;->c:I

    invoke-virtual {p0, v1}, Lcom/android/settings/datausage/DataUsagePreference;->setTitle(I)V

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsagePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120703

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsagePreference;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-wide v5, p3, Lcom/android/settingslib/net/a$a;->f:J

    invoke-static {v4, v5, v6}, Lcom/android/settings/datausage/f;->a(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x1

    iget-object p3, p3, Lcom/android/settingslib/net/a$a;->b:Ljava/lang/String;

    aput-object p3, v3, v4

    .line 63
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/android/settings/datausage/DataUsagePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 67
    :goto_0
    invoke-virtual {p2, p1}, Lcom/android/settingslib/net/a;->b(Landroid/net/NetworkTemplate;)J

    move-result-wide p1

    const-wide/16 v1, 0x0

    cmp-long p1, p1, v1

    if-lez p1, :cond_1

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsagePreference;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/DataUsagePreference;->setIntent(Landroid/content/Intent;)V

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 71
    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/DataUsagePreference;->setIntent(Landroid/content/Intent;)V

    .line 72
    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/DataUsagePreference;->setEnabled(Z)V

    return-void
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 4

    .line 78
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 80
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsagePreference;->a:Landroid/net/NetworkTemplate;

    const-string v2, "network_template"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 81
    iget v1, p0, Lcom/android/settings/datausage/DataUsagePreference;->b:I

    const-string v2, "sub_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 82
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsagePreference;->a:Landroid/net/NetworkTemplate;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkTemplate;->isMatchRuleMobile()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    const-string v3, "network_type"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 84
    new-instance v1, Lcom/android/settings/core/f;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsagePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/settings/core/f;-><init>(Landroid/content/Context;)V

    .line 85
    invoke-virtual {v1, v0}, Lcom/android/settings/core/f;->a(Landroid/os/Bundle;)Lcom/android/settings/core/f;

    move-result-object v0

    const-class v1, Lcom/android/settings/datausage/DataUsageList;

    .line 86
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/f;->a(Ljava/lang/String;)Lcom/android/settings/core/f;

    move-result-object v0

    .line 87
    invoke-virtual {v0, v2}, Lcom/android/settings/core/f;->a(I)Lcom/android/settings/core/f;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsagePreference;->a:Landroid/net/NetworkTemplate;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkTemplate;->isMatchRuleMobile()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f1201b9

    .line 2063
    invoke-virtual {v0, v2, v1}, Lcom/android/settings/core/f;->a(Ljava/lang/String;I)Lcom/android/settings/core/f;

    goto :goto_1

    .line 91
    :cond_1
    iget v1, p0, Lcom/android/settings/datausage/DataUsagePreference;->c:I

    .line 3063
    invoke-virtual {v0, v2, v1}, Lcom/android/settings/core/f;->a(Ljava/lang/String;I)Lcom/android/settings/core/f;

    .line 93
    :goto_1
    invoke-virtual {v0}, Lcom/android/settings/core/f;->b()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
