.class public Lcom/android/settings/network/telephony/NetworkOperatorPreference;
.super Landroidx/preference/Preference;
.source "NetworkOperatorPreference.java"


# instance fields
.field a:Landroid/telephony/CellInfo;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/telephony/CellInfo;Landroid/content/Context;Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/CellInfo;",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 52
    invoke-direct {p0, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    .line 46
    iput v0, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->c:I

    .line 53
    iput-object p1, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->a:Landroid/telephony/CellInfo;

    .line 54
    iput-object p3, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->b:Ljava/util/List;

    .line 55
    iput-boolean p4, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->d:Z

    .line 56
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string p2, "com.android.internal.R.bool.config_enableNewAutoSelectNetworkUI"

    .line 57
    invoke-static {p2}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 56
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->e:Z

    .line 1070
    iget-object p1, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->a:Landroid/telephony/CellInfo;

    invoke-static {p1}, Lcom/android/settings/network/telephony/a;->a(Landroid/telephony/CellInfo;)Ljava/lang/String;

    move-result-object p1

    .line 1071
    iget-object p2, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->a:Landroid/telephony/CellInfo;

    iget-object p3, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->b:Ljava/util/List;

    .line 1162
    invoke-static {p2}, Lcom/android/settings/network/telephony/a;->b(Landroid/telephony/CellInfo;)Lcom/android/internal/telephony/OperatorInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object p2

    if-eqz p3, :cond_0

    .line 1163
    invoke-interface {p3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 1072
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f120a10

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1074
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1076
    iget-object p1, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->a:Landroid/telephony/CellInfo;

    invoke-virtual {p1}, Landroid/telephony/CellInfo;->getCellSignalStrength()Landroid/telephony/CellSignalStrength;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1077
    invoke-virtual {p1}, Landroid/telephony/CellSignalStrength;->getLevel()I

    move-result v0

    .line 1079
    :cond_2
    iget p1, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->c:I

    if-eq p1, v0, :cond_3

    .line 1080
    iput v0, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->c:I

    .line 1081
    iget p1, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->c:I

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->a(I)V

    :cond_3
    return-void
.end method

.method private a(Landroid/telephony/CellInfo;)I
    .locals 1

    .line 93
    invoke-virtual {p1}, Landroid/telephony/CellInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/CellIdentity;->getType()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const p1, 0x7f0809de

    return p1

    .line 101
    :cond_1
    iget-boolean p1, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->d:Z

    if-eqz p1, :cond_2

    const p1, 0x7f08084b

    return p1

    :cond_2
    const p1, 0x7f0809e0

    return p1

    :cond_3
    const p1, 0x7f0809dd

    return p1

    :cond_4
    const p1, 0x7f0809df

    return p1
.end method

.method private a(I)V
    .locals 4

    .line 111
    iget-boolean v0, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->e:Z

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    const/4 v0, 0x5

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 114
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 115
    iget-object v2, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->a:Landroid/telephony/CellInfo;

    .line 116
    invoke-direct {p0, v2}, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->a(Landroid/telephony/CellInfo;)I

    move-result v2

    const/4 v3, 0x0

    .line 115
    invoke-static {v1, p1, v0, v2, v3}, Lcom/android/settings/network/telephony/d;->a(Landroid/content/Context;IIIZ)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public setIcon(I)V
    .locals 0

    .line 89
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->a(I)V

    return-void
.end method
