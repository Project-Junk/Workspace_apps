.class public Lcom/android/settings/sim/a;
.super Landroid/app/Activity;
.source "SimPreferenceDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/sim/a$a;
    }
.end annotation


# instance fields
.field a:Lcolor/support/v7/app/AlertDialog$Builder;

.field b:Landroid/view/View;

.field private c:Landroid/content/Context;

.field private d:Landroid/telephony/SubscriptionInfo;

.field private e:I

.field private f:[I

.field private g:[Ljava/lang/String;

.field private h:I

.field private i:Landroid/telephony/SubscriptionManager;

.field private final j:Ljava/lang/String;

.field private final k:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, "sim_name"

    .line 58
    iput-object v0, p0, Lcom/android/settings/sim/a;->j:Ljava/lang/String;

    const-string v0, "tint_pos"

    .line 59
    iput-object v0, p0, Lcom/android/settings/sim/a;->k:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/sim/a;I)I
    .locals 0

    .line 47
    iput p1, p0, Lcom/android/settings/sim/a;->h:I

    return p1
.end method

.method static synthetic a(Lcom/android/settings/sim/a;)Landroid/telephony/SubscriptionInfo;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settings/sim/a;->d:Landroid/telephony/SubscriptionInfo;

    return-object p0
.end method

.method static synthetic b(Lcom/android/settings/sim/a;)Landroid/telephony/SubscriptionManager;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settings/sim/a;->i:Landroid/telephony/SubscriptionManager;

    return-object p0
.end method

.method static synthetic c(Lcom/android/settings/sim/a;)[I
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settings/sim/a;->f:[I

    return-object p0
.end method

.method static synthetic d(Lcom/android/settings/sim/a;)I
    .locals 0

    .line 47
    iget p0, p0, Lcom/android/settings/sim/a;->h:I

    return p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 63
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    iput-object p0, p0, Lcom/android/settings/sim/a;->c:Landroid/content/Context;

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/sim/a;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "slot_id"

    const/4 v1, -0x1

    .line 66
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/sim/a;->e:I

    .line 67
    iget-object p1, p0, Lcom/android/settings/sim/a;->c:Landroid/content/Context;

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/sim/a;->i:Landroid/telephony/SubscriptionManager;

    .line 68
    iget-object p1, p0, Lcom/android/settings/sim/a;->i:Landroid/telephony/SubscriptionManager;

    iget v0, p0, Lcom/android/settings/sim/a;->e:I

    invoke-virtual {p1, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/sim/a;->d:Landroid/telephony/SubscriptionInfo;

    .line 69
    iget-object p1, p0, Lcom/android/settings/sim/a;->c:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v0, "com.android.internal.R.array.sim_colors"

    invoke-static {v0}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/sim/a;->f:[I

    .line 70
    iget-object p1, p0, Lcom/android/settings/sim/a;->c:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f030057

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/sim/a;->g:[Ljava/lang/String;

    const/4 p1, 0x0

    .line 71
    iput p1, p0, Lcom/android/settings/sim/a;->h:I

    .line 73
    new-instance v0, Lcolor/support/v7/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/sim/a;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/sim/a;->a:Lcolor/support/v7/app/AlertDialog$Builder;

    .line 74
    iget-object v0, p0, Lcom/android/settings/sim/a;->c:Landroid/content/Context;

    const-string v1, "layout_inflater"

    .line 75
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0d01e1

    const/4 v2, 0x0

    .line 76
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sim/a;->b:Landroid/view/View;

    .line 77
    iget-object v0, p0, Lcom/android/settings/sim/a;->a:Lcolor/support/v7/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/sim/a;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 1108
    iget-object v0, p0, Lcom/android/settings/sim/a;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1109
    iget-object v1, p0, Lcom/android/settings/sim/a;->b:Landroid/view/View;

    const v2, 0x7f0a0610

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 1110
    iget-object v2, p0, Lcom/android/settings/sim/a;->d:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1111
    invoke-static {v1}, Lcom/android/settings/m;->a(Landroid/widget/EditText;)V

    .line 1112
    iget-object v1, p0, Lcom/android/settings/sim/a;->b:Landroid/view/View;

    const v2, 0x7f0a0637

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 1113
    new-instance v2, Lcom/android/settings/sim/a$a;

    iget-object v3, p0, Lcom/android/settings/sim/a;->c:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settings/sim/a;->g:[Ljava/lang/String;

    invoke-direct {v2, p0, v3, v4}, Lcom/android/settings/sim/a$a;-><init>(Lcom/android/settings/sim/a;Landroid/content/Context;[Ljava/lang/String;)V

    const v3, 0x1090009

    .line 1115
    invoke-virtual {v2, v3}, Lcom/android/settings/sim/a$a;->setDropDownViewResource(I)V

    .line 1116
    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    move v2, p1

    .line 1118
    :goto_0
    iget-object v3, p0, Lcom/android/settings/sim/a;->f:[I

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 1119
    aget v3, v3, v2

    iget-object v4, p0, Lcom/android/settings/sim/a;->d:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getIconTint()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 1120
    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1121
    iput v2, p0, Lcom/android/settings/sim/a;->h:I

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1126
    :cond_1
    :goto_1
    new-instance v2, Lcom/android/settings/sim/a$1;

    invoke-direct {v2, p0, v1}, Lcom/android/settings/sim/a$1;-><init>(Lcom/android/settings/sim/a;Landroid/widget/Spinner;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1139
    iget-object v2, p0, Lcom/android/settings/sim/a;->c:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 1141
    iget-object v3, p0, Lcom/android/settings/sim/a;->b:Landroid/view/View;

    const v4, 0x7f0a0477

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1142
    iget-object v4, p0, Lcom/android/settings/sim/a;->d:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/telephony/TelephonyManager;->getLine1Number(I)Ljava/lang/String;

    move-result-object v4

    .line 1143
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v6, "com.android.internal.R.string.unknownName"

    if-eqz v5, :cond_2

    .line 1144
    invoke-static {v6}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1146
    :cond_2
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1149
    :goto_2
    iget-object v3, p0, Lcom/android/settings/sim/a;->d:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getSimOperatorName(I)Ljava/lang/String;

    move-result-object v2

    .line 1150
    iget-object v3, p0, Lcom/android/settings/sim/a;->b:Landroid/view/View;

    const v4, 0x7f0a0125

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1151
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lcom/android/settings/sim/a;->c:Landroid/content/Context;

    .line 1152
    invoke-static {v6}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1151
    :goto_3
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1154
    iget-object v2, p0, Lcom/android/settings/sim/a;->a:Lcolor/support/v7/app/AlertDialog$Builder;

    const v3, 0x7f1214b6

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settings/sim/a;->d:Landroid/telephony/SubscriptionInfo;

    .line 1155
    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v5

    add-int/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, p1

    .line 1154
    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 1157
    iget-object p1, p0, Lcom/android/settings/sim/a;->a:Lcolor/support/v7/app/AlertDialog$Builder;

    const v0, 0x7f120f1b

    new-instance v2, Lcom/android/settings/sim/a$2;

    invoke-direct {v2, p0, v1}, Lcom/android/settings/sim/a$2;-><init>(Lcom/android/settings/sim/a;Landroid/widget/Spinner;)V

    invoke-virtual {p1, v0, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 1177
    iget-object p1, p0, Lcom/android/settings/sim/a;->a:Lcolor/support/v7/app/AlertDialog$Builder;

    const v0, 0x7f120491

    new-instance v1, Lcom/android/settings/sim/a$3;

    invoke-direct {v1, p0}, Lcom/android/settings/sim/a$3;-><init>(Lcom/android/settings/sim/a;)V

    invoke-virtual {p1, v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 1184
    iget-object p1, p0, Lcom/android/settings/sim/a;->a:Lcolor/support/v7/app/AlertDialog$Builder;

    new-instance v0, Lcom/android/settings/sim/a$4;

    invoke-direct {v0, p0}, Lcom/android/settings/sim/a$4;-><init>(Lcom/android/settings/sim/a;)V

    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 1191
    iget-object p1, p0, Lcom/android/settings/sim/a;->a:Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog;->show()V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 95
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "tint_pos"

    .line 97
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 98
    iget-object v1, p0, Lcom/android/settings/sim/a;->b:Landroid/view/View;

    const v2, 0x7f0a0637

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 99
    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 100
    iput v0, p0, Lcom/android/settings/sim/a;->h:I

    .line 102
    iget-object v0, p0, Lcom/android/settings/sim/a;->b:Landroid/view/View;

    const v1, 0x7f0a0610

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string v1, "sim_name"

    .line 103
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 104
    invoke-static {v0}, Lcom/android/settings/m;->a(Landroid/widget/EditText;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 84
    iget v0, p0, Lcom/android/settings/sim/a;->h:I

    const-string v1, "tint_pos"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 86
    iget-object v0, p0, Lcom/android/settings/sim/a;->b:Landroid/view/View;

    const v1, 0x7f0a0610

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 87
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sim_name"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
