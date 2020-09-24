.class public Lcom/android/settings/display/TimeoutListPreference;
.super Lcom/android/settings/RestrictedListPreference;
.source "TimeoutListPreference.java"


# instance fields
.field private j:Lcom/android/settingslib/g$a;

.field private final k:[Ljava/lang/CharSequence;

.field private final l:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/android/settings/RestrictedListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    invoke-virtual {p0}, Lcom/android/settings/display/TimeoutListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/TimeoutListPreference;->k:[Ljava/lang/CharSequence;

    .line 47
    invoke-virtual {p0}, Lcom/android/settings/display/TimeoutListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/TimeoutListPreference;->l:[Ljava/lang/CharSequence;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/display/TimeoutListPreference;)Lcom/android/settingslib/g$a;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/settings/display/TimeoutListPreference;->j:Lcom/android/settingslib/g$a;

    return-object p0
.end method


# virtual methods
.method public final a(JLcom/android/settingslib/g$a;)V
    .locals 6

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/display/TimeoutListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p3, :cond_1

    .line 85
    iget-object v0, p0, Lcom/android/settings/display/TimeoutListPreference;->j:Lcom/android/settingslib/g$a;

    if-nez v0, :cond_1

    .line 1117
    iget-object v0, p0, Lcom/android/settings/RestrictedListPreference;->a:Lcom/android/settingslib/i;

    .line 1161
    iget-boolean v0, v0, Lcom/android/settingslib/i;->a:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-nez p3, :cond_2

    const-wide p1, 0x7fffffffffffffffL

    .line 92
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 93
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 94
    :goto_0
    iget-object v4, p0, Lcom/android/settings/display/TimeoutListPreference;->l:[Ljava/lang/CharSequence;

    array-length v5, v4

    if-ge v3, v5, :cond_4

    .line 95
    aget-object v4, v4, v3

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-gtz v4, :cond_3

    .line 97
    iget-object v4, p0, Lcom/android/settings/display/TimeoutListPreference;->k:[Ljava/lang/CharSequence;

    aget-object v4, v4, v3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v4, p0, Lcom/android/settings/display/TimeoutListPreference;->l:[Ljava/lang/CharSequence;

    aget-object v4, v4, v3

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 104
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_5

    .line 105
    invoke-virtual {p0, p3}, Lcom/android/settings/display/TimeoutListPreference;->a(Lcom/android/settingslib/g$a;)V

    return-void

    :cond_5
    const/4 v3, 0x0

    .line 108
    invoke-virtual {p0, v3}, Lcom/android/settings/display/TimeoutListPreference;->a(Lcom/android/settingslib/g$a;)V

    .line 111
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/settings/display/TimeoutListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    array-length v4, v4

    if-eq v3, v4, :cond_8

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/display/TimeoutListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 113
    new-array v4, v2, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/android/settings/display/TimeoutListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 114
    new-array v0, v2, [Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/android/settings/display/TimeoutListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 115
    iput-object p3, p0, Lcom/android/settings/display/TimeoutListPreference;->j:Lcom/android/settingslib/g$a;

    int-to-long v4, v3

    cmp-long p3, v4, p1

    if-gtz p3, :cond_6

    .line 117
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/display/TimeoutListPreference;->setValue(Ljava/lang/String;)V

    return-void

    .line 118
    :cond_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-lez p3, :cond_7

    .line 119
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long p3, v4, p1

    if-nez p3, :cond_7

    .line 122
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/display/TimeoutListPreference;->setValue(Ljava/lang/String;)V

    return-void

    .line 126
    :cond_7
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Default to longest timeout. Value disabled by admin:"

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "TimeoutListPreference"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/display/TimeoutListPreference;->setValue(Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method public final a(Landroid/app/Dialog;)V
    .locals 1

    .line 63
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedListPreference;->a(Landroid/app/Dialog;)V

    .line 64
    invoke-virtual {p1}, Landroid/app/Dialog;->create()V

    .line 65
    iget-object v0, p0, Lcom/android/settings/display/TimeoutListPreference;->j:Lcom/android/settingslib/g$a;

    if-eqz v0, :cond_0

    const v0, 0x7f0a0064

    .line 66
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a0066

    .line 67
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/android/settings/display/TimeoutListPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/display/TimeoutListPreference$1;-><init>(Lcom/android/settings/display/TimeoutListPreference;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public final a(Landroidx/appcompat/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 53
    invoke-super {p0, p1, p2}, Lcom/android/settings/RestrictedListPreference;->a(Landroidx/appcompat/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V

    .line 54
    iget-object p2, p0, Lcom/android/settings/display/TimeoutListPreference;->j:Lcom/android/settingslib/g$a;

    if-eqz p2, :cond_0

    const p2, 0x7f0d0034

    .line 55
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(I)Landroidx/appcompat/app/AlertDialog$Builder;

    return-void

    :cond_0
    const/4 p2, 0x0

    .line 57
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    return-void
.end method
