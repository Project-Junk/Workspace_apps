.class public Lcom/android/settings/datausage/CellDataPreference;
.super Lcom/coloros/settingslib/CustomDialogPreferenceCompat;
.source "CellDataPreference.java"

# interfaces
.implements Lcom/android/settings/datausage/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datausage/CellDataPreference$CellDataState;,
        Lcom/android/settings/datausage/CellDataPreference$a;
    }
.end annotation


# instance fields
.field public a:I

.field public b:Z

.field c:Landroid/telephony/SubscriptionManager;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field final d:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private e:Landroid/telephony/TelephonyManager;

.field private final f:Lcom/android/settings/datausage/CellDataPreference$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const v0, 0x7f0405d1

    const v1, 0x101036d

    .line 59
    invoke-static {p1, v0, v1}, Landroidx/core/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/coloros/settingslib/CustomDialogPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 52
    iput p1, p0, Lcom/android/settings/datausage/CellDataPreference;->a:I

    .line 223
    new-instance p1, Lcom/android/settings/datausage/CellDataPreference$1;

    invoke-direct {p1, p0}, Lcom/android/settings/datausage/CellDataPreference$1;-><init>(Lcom/android/settings/datausage/CellDataPreference;)V

    iput-object p1, p0, Lcom/android/settings/datausage/CellDataPreference;->d:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 235
    new-instance p1, Lcom/android/settings/datausage/CellDataPreference$2;

    invoke-direct {p1, p0}, Lcom/android/settings/datausage/CellDataPreference$2;-><init>(Lcom/android/settings/datausage/CellDataPreference;)V

    iput-object p1, p0, Lcom/android/settings/datausage/CellDataPreference;->f:Lcom/android/settings/datausage/CellDataPreference$a;

    return-void
.end method

.method private a()V
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/android/settings/datausage/CellDataPreference;->e:Landroid/telephony/TelephonyManager;

    iget v1, p0, Lcom/android/settings/datausage/CellDataPreference;->a:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getDataEnabled(I)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/datausage/CellDataPreference;->c(Z)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/datausage/CellDataPreference;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/android/settings/datausage/CellDataPreference;->b()V

    return-void
.end method

.method private b()V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/android/settings/datausage/CellDataPreference;->c:Landroid/telephony/SubscriptionManager;

    iget v1, p0, Lcom/android/settings/datausage/CellDataPreference;->a:I

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/CellDataPreference;->setEnabled(Z)V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/datausage/CellDataPreference;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/android/settings/datausage/CellDataPreference;->a()V

    return-void
.end method

.method private b(Z)V
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/android/settings/datausage/CellDataPreference;->e:Landroid/telephony/TelephonyManager;

    iget v1, p0, Lcom/android/settings/datausage/CellDataPreference;->a:I

    invoke-virtual {v0, v1, p1}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    .line 152
    invoke-direct {p0, p1}, Lcom/android/settings/datausage/CellDataPreference;->c(Z)V

    return-void
.end method

.method private c(Z)V
    .locals 1

    .line 156
    iget-boolean v0, p0, Lcom/android/settings/datausage/CellDataPreference;->b:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 157
    :cond_0
    iput-boolean p1, p0, Lcom/android/settings/datausage/CellDataPreference;->b:Z

    .line 158
    invoke-virtual {p0}, Lcom/android/settings/datausage/CellDataPreference;->notifyChanged()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/net/NetworkTemplate;ILcom/android/settings/datausage/g$a;)V
    .locals 1

    const/4 p1, -0x1

    if-eq p2, p1, :cond_1

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/datausage/CellDataPreference;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/datausage/CellDataPreference;->c:Landroid/telephony/SubscriptionManager;

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/datausage/CellDataPreference;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/datausage/CellDataPreference;->e:Landroid/telephony/TelephonyManager;

    .line 112
    iget-object p3, p0, Lcom/android/settings/datausage/CellDataPreference;->c:Landroid/telephony/SubscriptionManager;

    iget-object v0, p0, Lcom/android/settings/datausage/CellDataPreference;->d:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {p3, v0}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 114
    iget p3, p0, Lcom/android/settings/datausage/CellDataPreference;->a:I

    if-ne p3, p1, :cond_0

    .line 115
    iput p2, p0, Lcom/android/settings/datausage/CellDataPreference;->a:I

    .line 116
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/datausage/CellDataPreference;->getKey()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/CellDataPreference;->setKey(Ljava/lang/String;)V

    .line 118
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/datausage/CellDataPreference;->b()V

    .line 119
    invoke-direct {p0}, Lcom/android/settings/datausage/CellDataPreference;->a()V

    return-void

    .line 107
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "CellDataPreference needs a SubscriptionInfo"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lcolor/support/v7/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    const/4 v0, 0x0

    .line 1177
    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v1, 0x7f1206cf

    .line 1178
    invoke-virtual {p1, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v1, 0x104000a

    .line 1179
    invoke-virtual {p1, v1, p2}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 p2, 0x1040000

    .line 1180
    invoke-virtual {p1, p2, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    return-void
.end method

.method public onAttached()V
    .locals 4

    .line 87
    invoke-super {p0}, Lcom/coloros/settingslib/CustomDialogPreferenceCompat;->onAttached()V

    .line 88
    iget-object v0, p0, Lcom/android/settings/datausage/CellDataPreference;->f:Lcom/android/settings/datausage/CellDataPreference$a;

    iget v1, p0, Lcom/android/settings/datausage/CellDataPreference;->a:I

    invoke-virtual {p0}, Lcom/android/settings/datausage/CellDataPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/settings/datausage/CellDataPreference$a;->a(ZILandroid/content/Context;)V

    .line 89
    iget-object v0, p0, Lcom/android/settings/datausage/CellDataPreference;->c:Landroid/telephony/SubscriptionManager;

    if-eqz v0, :cond_0

    .line 90
    iget-object v1, p0, Lcom/android/settings/datausage/CellDataPreference;->d:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    :cond_0
    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 163
    invoke-super {p0, p1}, Lcom/coloros/settingslib/CustomDialogPreferenceCompat;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x1020040

    .line 164
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    .line 165
    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 166
    check-cast p1, Landroid/widget/Checkable;

    iget-boolean v0, p0, Lcom/android/settings/datausage/CellDataPreference;->b:Z

    invoke-interface {p1, v0}, Landroid/widget/Checkable;->setChecked(Z)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 220
    invoke-direct {p0, p1}, Lcom/android/settings/datausage/CellDataPreference;->b(Z)V

    return-void
.end method

.method public onDetached()V
    .locals 4

    .line 96
    iget-object v0, p0, Lcom/android/settings/datausage/CellDataPreference;->f:Lcom/android/settings/datausage/CellDataPreference$a;

    iget v1, p0, Lcom/android/settings/datausage/CellDataPreference;->a:I

    invoke-virtual {p0}, Lcom/android/settings/datausage/CellDataPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/settings/datausage/CellDataPreference$a;->a(ZILandroid/content/Context;)V

    .line 97
    iget-object v0, p0, Lcom/android/settings/datausage/CellDataPreference;->c:Landroid/telephony/SubscriptionManager;

    if-eqz v0, :cond_0

    .line 98
    iget-object v1, p0, Lcom/android/settings/datausage/CellDataPreference;->d:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 101
    :cond_0
    invoke-super {p0}, Lcom/coloros/settingslib/CustomDialogPreferenceCompat;->onDetached()V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 66
    check-cast p1, Lcom/android/settings/datausage/CellDataPreference$CellDataState;

    .line 67
    invoke-virtual {p1}, Lcom/android/settings/datausage/CellDataPreference$CellDataState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/coloros/settingslib/CustomDialogPreferenceCompat;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/datausage/CellDataPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datausage/CellDataPreference;->e:Landroid/telephony/TelephonyManager;

    .line 69
    iget-boolean v0, p1, Lcom/android/settings/datausage/CellDataPreference$CellDataState;->b:Z

    iput-boolean v0, p0, Lcom/android/settings/datausage/CellDataPreference;->b:Z

    .line 70
    iget v0, p0, Lcom/android/settings/datausage/CellDataPreference;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 71
    iget p1, p1, Lcom/android/settings/datausage/CellDataPreference$CellDataState;->a:I

    iput p1, p0, Lcom/android/settings/datausage/CellDataPreference;->a:I

    .line 72
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/datausage/CellDataPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/settings/datausage/CellDataPreference;->a:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/CellDataPreference;->setKey(Ljava/lang/String;)V

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/datausage/CellDataPreference;->notifyChanged()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 79
    new-instance v0, Lcom/android/settings/datausage/CellDataPreference$CellDataState;

    invoke-super {p0}, Lcom/coloros/settingslib/CustomDialogPreferenceCompat;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/datausage/CellDataPreference$CellDataState;-><init>(Landroid/os/Parcelable;)V

    .line 80
    iget-boolean v1, p0, Lcom/android/settings/datausage/CellDataPreference;->b:Z

    iput-boolean v1, v0, Lcom/android/settings/datausage/CellDataPreference$CellDataState;->b:Z

    .line 81
    iget v1, p0, Lcom/android/settings/datausage/CellDataPreference;->a:I

    iput v1, v0, Lcom/android/settings/datausage/CellDataPreference$CellDataState;->a:I

    return-object v0
.end method

.method public performClick(Landroid/view/View;)V
    .locals 5

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/datausage/CellDataPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 136
    invoke-static {v0}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/overlay/b;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/d;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/datausage/CellDataPreference;->b:Z

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    const/16 v4, 0xb2

    .line 137
    invoke-virtual {v1, v0, v4, v2}, Lcom/android/settingslib/core/instrumentation/d;->a(Landroid/content/Context;IZ)V

    .line 138
    iget-object v0, p0, Lcom/android/settings/datausage/CellDataPreference;->c:Landroid/telephony/SubscriptionManager;

    iget v1, p0, Lcom/android/settings/datausage/CellDataPreference;->a:I

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    .line 140
    iget-object v0, p0, Lcom/android/settings/datausage/CellDataPreference;->c:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionInfo()Landroid/telephony/SubscriptionInfo;

    .line 141
    iget-boolean v0, p0, Lcom/android/settings/datausage/CellDataPreference;->b:Z

    if-eqz v0, :cond_0

    .line 142
    invoke-super {p0, p1}, Lcom/coloros/settingslib/CustomDialogPreferenceCompat;->performClick(Landroid/view/View;)V

    return-void

    .line 144
    :cond_0
    invoke-direct {p0, v3}, Lcom/android/settings/datausage/CellDataPreference;->b(Z)V

    return-void
.end method
