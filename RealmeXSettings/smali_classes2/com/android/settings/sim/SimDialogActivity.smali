.class public Lcom/android/settings/sim/SimDialogActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "SimDialogActivity.java"


# static fields
.field public static a:Ljava/lang/String; = "preferred_sim"

.field public static b:Ljava/lang/String; = "dialog_type"

.field public static c:Ljava/lang/String; = "result_sub_id"

.field private static d:Ljava/lang/String; = "SimDialogActivity"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    return-void
.end method

.method private a(I)Lcom/android/settings/sim/SimDialogFragment;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v2, 0x2

    const v3, 0x7f12140d

    if-eq p1, v2, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 103
    invoke-static {p1, v3, v0}, Lcom/android/settings/sim/SimListDialogFragment;->a(IIZ)Lcom/android/settings/sim/SimListDialogFragment;

    move-result-object p1

    return-object p1

    .line 106
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid dialog type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " sent."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/sim/SimDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    sget-object v0, Lcom/android/settings/sim/SimDialogActivity;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 101
    invoke-static {}, Lcom/android/settings/sim/PreferredSimDialogFragment;->a()Lcom/android/settings/sim/PreferredSimDialogFragment;

    move-result-object p1

    return-object p1

    .line 99
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Missing required extra "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/android/settings/sim/SimDialogActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 95
    :cond_3
    invoke-static {p1, v3, v1}, Lcom/android/settings/sim/SimListDialogFragment;->a(IIZ)Lcom/android/settings/sim/SimListDialogFragment;

    move-result-object p1

    return-object p1

    :cond_4
    const v0, 0x7f12140b

    .line 91
    invoke-static {p1, v0, v1}, Lcom/android/settings/sim/CallsSimListDialogFragment;->a(IIZ)Lcom/android/settings/sim/SimListDialogFragment;

    move-result-object p1

    return-object p1

    :cond_5
    const v1, 0x7f12140c

    .line 88
    invoke-static {p1, v1, v0}, Lcom/android/settings/sim/SimListDialogFragment;->a(IIZ)Lcom/android/settings/sim/SimListDialogFragment;

    move-result-object p1

    return-object p1
.end method

.method private a()V
    .locals 4

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/sim/SimDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/android/settings/sim/SimDialogActivity;->b:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 73
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/sim/SimDialogActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    .line 75
    invoke-virtual {v2, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/android/settings/sim/SimDialogFragment;

    if-nez v3, :cond_0

    .line 78
    invoke-direct {p0, v0}, Lcom/android/settings/sim/SimDialogActivity;->a(I)Lcom/android/settings/sim/SimDialogFragment;

    move-result-object v0

    .line 79
    invoke-virtual {v0, v2, v1}, Lcom/android/settings/sim/SimDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void

    .line 81
    :cond_0
    invoke-virtual {v3}, Lcom/android/settings/sim/SimDialogFragment;->b()V

    return-void
.end method

.method private b(I)V
    .locals 2

    .line 149
    const-class v0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p0, v0}, Lcom/android/settings/sim/SimDialogActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    .line 150
    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v1}, Lcom/android/settings/sim/SimDialogActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 151
    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 152
    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(I)V

    const/4 p1, 0x1

    .line 153
    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 155
    invoke-virtual {p0}, Lcom/android/settings/sim/SimDialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1206b3

    invoke-static {v0, v1, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private c(I)V
    .locals 1

    .line 159
    invoke-direct {p0, p1}, Lcom/android/settings/sim/SimDialogActivity;->f(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object p1

    .line 160
    const-class v0, Landroid/telecom/TelecomManager;

    invoke-virtual {p0, v0}, Lcom/android/settings/sim/SimDialogActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    .line 161
    invoke-virtual {v0, p1}, Landroid/telecom/TelecomManager;->setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    return-void
.end method

.method private d(I)V
    .locals 1

    .line 165
    const-class v0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p0, v0}, Lcom/android/settings/sim/SimDialogActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    .line 166
    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->setDefaultSmsSubId(I)V

    return-void
.end method

.method private e(I)V
    .locals 0

    .line 170
    invoke-direct {p0, p1}, Lcom/android/settings/sim/SimDialogActivity;->b(I)V

    .line 171
    invoke-direct {p0, p1}, Lcom/android/settings/sim/SimDialogActivity;->d(I)V

    .line 172
    invoke-direct {p0, p1}, Lcom/android/settings/sim/SimDialogActivity;->c(I)V

    return-void
.end method

.method private f(I)Landroid/telecom/PhoneAccountHandle;
    .locals 5

    .line 176
    const-class v0, Landroid/telecom/TelecomManager;

    invoke-virtual {p0, v0}, Lcom/android/settings/sim/SimDialogActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    .line 177
    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v1}, Lcom/android/settings/sim/SimDialogActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 179
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/PhoneAccountHandle;

    .line 180
    invoke-virtual {v0, v3}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v4

    .line 181
    invoke-virtual {v1, v4}, Landroid/telephony/TelephonyManager;->getSubIdForPhoneAccount(Landroid/telecom/PhoneAccount;)I

    move-result v4

    if-ne p1, v4, :cond_0

    return-object v3

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public final a(II)V
    .locals 2

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/sim/SimDialogActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 112
    sget-object p1, Lcom/android/settings/sim/SimDialogActivity;->d:Ljava/lang/String;

    const-string p2, "onSubscriptionSelected ignored because stored fragment was null"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 131
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 132
    sget-object v0, Lcom/android/settings/sim/SimDialogActivity;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 p2, -0x1

    .line 133
    invoke-virtual {p0, p2, p1}, Lcom/android/settings/sim/SimDialogActivity;->setResult(ILandroid/content/Intent;)V

    return-void

    .line 136
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid dialog type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " sent."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 126
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/settings/sim/SimDialogActivity;->e(I)V

    return-void

    .line 123
    :cond_3
    invoke-direct {p0, p2}, Lcom/android/settings/sim/SimDialogActivity;->d(I)V

    return-void

    .line 120
    :cond_4
    invoke-direct {p0, p2}, Lcom/android/settings/sim/SimDialogActivity;->c(I)V

    return-void

    .line 117
    :cond_5
    invoke-direct {p0, p2}, Lcom/android/settings/sim/SimDialogActivity;->b(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 60
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-direct {p0}, Lcom/android/settings/sim/SimDialogActivity;->a()V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 66
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 67
    invoke-virtual {p0, p1}, Lcom/android/settings/sim/SimDialogActivity;->setIntent(Landroid/content/Intent;)V

    .line 68
    invoke-direct {p0}, Lcom/android/settings/sim/SimDialogActivity;->a()V

    return-void
.end method
