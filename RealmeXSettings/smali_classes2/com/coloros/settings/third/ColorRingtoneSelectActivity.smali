.class public Lcom/coloros/settings/third/ColorRingtoneSelectActivity;
.super Landroid/app/Activity;
.source "ColorRingtoneSelectActivity.java"


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Z

.field private j:Ljava/lang/String;

.field private k:J

.field private l:Z

.field private m:Z

.field private n:Landroid/app/Dialog;

.field private o:Z

.field private p:Z

.field private q:Landroid/content/DialogInterface$OnClickListener;

.field private r:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 59
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, -0x1

    .line 85
    iput v0, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->b:I

    .line 86
    iput v0, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->c:I

    .line 87
    iput v0, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->d:I

    .line 88
    iput v0, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->e:I

    .line 89
    iput v0, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->f:I

    .line 90
    iput v0, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->g:I

    .line 91
    iput v0, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->h:I

    const/4 v0, 0x0

    .line 93
    iput-boolean v0, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->i:Z

    const/4 v1, 0x0

    .line 94
    iput-object v1, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->j:Ljava/lang/String;

    const-wide/16 v1, -0x1

    .line 95
    iput-wide v1, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->k:J

    .line 96
    iput-boolean v0, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->l:Z

    .line 97
    iput-boolean v0, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->m:Z

    .line 246
    new-instance v0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity$1;

    invoke-direct {v0, p0}, Lcom/coloros/settings/third/ColorRingtoneSelectActivity$1;-><init>(Lcom/coloros/settings/third/ColorRingtoneSelectActivity;)V

    iput-object v0, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->q:Landroid/content/DialogInterface$OnClickListener;

    .line 397
    new-instance v0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity$2;

    invoke-direct {v0, p0}, Lcom/coloros/settings/third/ColorRingtoneSelectActivity$2;-><init>(Lcom/coloros/settings/third/ColorRingtoneSelectActivity;)V

    iput-object v0, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->r:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/third/ColorRingtoneSelectActivity;)J
    .locals 2

    .line 59
    iget-wide v0, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->k:J

    return-wide v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 59
    sget-object v0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/coloros/settings/third/ColorRingtoneSelectActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->j:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 59
    sput-object p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->a:Ljava/lang/String;

    return-object p0
.end method

.method private synthetic a(Landroid/content/DialogInterface;)V
    .locals 0

    .line 197
    invoke-direct {p0}, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->b()V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/third/ColorRingtoneSelectActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 3332
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setRingtone, name="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "//uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SetRingtoneActivity"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3333
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "ringtone_sim2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :sswitch_1
    const-string v0, "oppo_sms_notification_sound"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_2
    const-string v0, "ringtone"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_3
    const-string v0, "notification_sim2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    const-string v4, "card_number_"

    if-eqz v0, :cond_4

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_1

    goto :goto_2

    .line 3347
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3348
    invoke-static {p0}, Lcom/coloros/settings/utils/al;->Q(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "smssound_save_sim2"

    .line 3347
    invoke-static {p0, v1, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 3343
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3344
    invoke-static {p0}, Lcom/coloros/settings/utils/al;->Q(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "smssound_save_sim1"

    .line 3343
    invoke-static {p0, v1, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 3339
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3340
    invoke-static {p0}, Lcom/coloros/settings/utils/al;->Q(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ringtong_save_sim2"

    .line 3339
    invoke-static {p0, v1, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 3335
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3336
    invoke-static {p0}, Lcom/coloros/settings/utils/al;->Q(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ringtong_save_sim1"

    .line 3335
    invoke-static {p0, v1, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 3353
    :goto_2
    invoke-virtual {p0}, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5db216f1 -> :sswitch_3
        -0x49b4c45e -> :sswitch_2
        0x1e042ce0 -> :sswitch_1
        0x486350b8 -> :sswitch_0
    .end sparse-switch
.end method

.method static synthetic a(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 4

    .line 4415
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "SetRingtoneActivity"

    if-eqz p1, :cond_3

    .line 4417
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 4419
    invoke-static {p0, p1}, Lcom/oppo/os/OppoUsbEnvironment;->getPathType(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    .line 4420
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isValibPath, type = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "// path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x3

    if-eq p0, p1, :cond_1

    const/4 p1, -0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    move v0, p0

    goto :goto_1

    :cond_1
    :goto_0
    const-string p0, "isValibPath, OTG message or invalib massage!"

    .line 4424
    invoke-static {v1, p0}, Lcom/coloros/settings/utils/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string p0, "isValibPath, path is null!"

    .line 4429
    invoke-static {v1, p0}, Lcom/coloros/settings/utils/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string p0, "isValibPath, uri is null!"

    .line 4433
    invoke-static {v1, p0}, Lcom/coloros/settings/utils/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return v0
.end method

.method static synthetic a(Lcom/coloros/settings/third/ColorRingtoneSelectActivity;Z)Z
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->i:Z

    return p1
.end method

.method static synthetic b(Lcom/coloros/settings/third/ColorRingtoneSelectActivity;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->b:I

    return p0
.end method

.method private b()V
    .locals 2

    .line 167
    invoke-virtual {p0}, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->finish()V

    const v0, 0x7f010073

    const v1, 0x7f01006a

    .line 168
    invoke-virtual {p0, v0, v1}, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->overridePendingTransition(II)V

    return-void
.end method

.method static synthetic c(Lcom/coloros/settings/third/ColorRingtoneSelectActivity;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->o:Z

    return p0
.end method

.method static synthetic d(Lcom/coloros/settings/third/ColorRingtoneSelectActivity;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->p:Z

    return p0
.end method

.method static synthetic e(Lcom/coloros/settings/third/ColorRingtoneSelectActivity;)V
    .locals 2

    .line 3369
    iget-boolean v0, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->i:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const v0, 0x7f12127b

    .line 3370
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 3371
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    const v0, 0x7f120ef4

    .line 3373
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 3374
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method static synthetic f(Lcom/coloros/settings/third/ColorRingtoneSelectActivity;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->c:I

    return p0
.end method

.method static synthetic g(Lcom/coloros/settings/third/ColorRingtoneSelectActivity;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->d:I

    return p0
.end method

.method static synthetic h(Lcom/coloros/settings/third/ColorRingtoneSelectActivity;)V
    .locals 2

    const v0, 0x7f120fc4

    const/4 v1, 0x1

    .line 3379
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 3380
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method static synthetic i(Lcom/coloros/settings/third/ColorRingtoneSelectActivity;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->e:I

    return p0
.end method

.method static synthetic j(Lcom/coloros/settings/third/ColorRingtoneSelectActivity;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->f:I

    return p0
.end method

.method static synthetic k(Lcom/coloros/settings/third/ColorRingtoneSelectActivity;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->g:I

    return p0
.end method

.method static synthetic l(Lcom/coloros/settings/third/ColorRingtoneSelectActivity;)V
    .locals 3

    .line 4357
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oppo.contacts.ui.OPPO_SELECT_CONTACTS_SET_RINGTONE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4359
    iget-object v1, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->j:Ljava/lang/String;

    const-string v2, "CONTACTS_RINGTONE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4361
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const v0, 0x7f120e7f

    const/4 v1, 0x0

    .line 4363
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 4364
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static synthetic lambda$_QqikLlGsJRtbCop09jr7fBSmsc(Lcom/coloros/settings/third/ColorRingtoneSelectActivity;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->a(Landroid/content/DialogInterface;)V

    return-void
.end method

.method static synthetic m(Lcom/coloros/settings/third/ColorRingtoneSelectActivity;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->h:I

    return p0
.end method

.method static synthetic n(Lcom/coloros/settings/third/ColorRingtoneSelectActivity;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->b()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 327
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 328
    invoke-direct {p0}, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->b()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    const-string v0, "onCreate--player released"

    const/4 v1, 0x1

    .line 105
    invoke-virtual {p0, v1}, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->requestWindowFeature(I)Z

    .line 106
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 107
    invoke-virtual {p0}, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/Window;->setDimAmount(F)V

    .line 109
    invoke-static {}, Lcom/coloros/settings/utils/bh;->g()Z

    move-result p1

    const/4 v2, 0x0

    .line 110
    invoke-static {p0, v2}, Lcom/coloros/settings/utils/al;->a(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p0, v2}, Lcom/coloros/settings/utils/al;->b(Landroid/content/Context;I)Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    iput-boolean v3, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->o:Z

    .line 111
    iput-boolean v2, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->p:Z

    if-eqz p1, :cond_2

    .line 113
    invoke-static {p0, v1}, Lcom/coloros/settings/utils/al;->a(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p0, v1}, Lcom/coloros/settings/utils/al;->b(Landroid/content/Context;I)Z

    move-result p1

    if-nez p1, :cond_1

    move p1, v1

    goto :goto_1

    :cond_1
    move p1, v2

    :goto_1
    iput-boolean p1, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->p:Z

    .line 116
    :cond_2
    invoke-virtual {p0}, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-wide/16 v3, -0x1

    const-string v5, "audio_id"

    invoke-virtual {p1, v5, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->k:J

    .line 118
    iget-wide v3, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->k:J

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    const-string v3, "SetRingtoneActivity"

    if-gez p1, :cond_5

    .line 119
    invoke-virtual {p0}, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v4, "audio_uri"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 120
    sput-object p1, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->a:Ljava/lang/String;

    const-string v4, "onCreate--Illegal content uri ="

    if-eqz p1, :cond_4

    .line 121
    sget-object p1, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 122
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "onCreate--uri="

    invoke-virtual {v8, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    const-string v8, "content"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 124
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    int-to-long v7, p1

    iput-wide v7, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->k:J

    goto :goto_2

    .line 126
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->a:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-direct {p0}, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->b()V

    goto :goto_2

    .line 131
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->a:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-direct {p0}, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->b()V

    .line 136
    :cond_5
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v4, "onCreate--AUDIO ID="

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v7, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->k:J

    invoke-virtual {p1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-wide v7, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->k:J

    cmp-long p1, v7, v5

    if-gez p1, :cond_6

    .line 139
    invoke-direct {p0}, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->b()V

    return-void

    :cond_6
    const-string p1, "external"

    .line 144
    invoke-static {p1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iget-wide v4, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->k:J

    .line 143
    invoke-static {p1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 145
    new-instance v4, Landroid/media/MediaPlayer;

    invoke-direct {v4}, Landroid/media/MediaPlayer;-><init>()V

    .line 148
    :try_start_0
    invoke-virtual {v4, p0, p1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    invoke-static {v3, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-virtual {v4}, Landroid/media/MediaPlayer;->release()V

    .line 1384
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.MEDIA_EJECT"

    .line 1385
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "file"

    .line 1386
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1387
    iget-object v0, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->r:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, p1}, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1388
    iput-boolean v1, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->l:Z

    const-string p1, "setup, start"

    .line 2191
    invoke-static {v3, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2202
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const v0, 0x7f121427

    .line 2203
    invoke-virtual {p0, v0}, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v4, 0x7f121428

    .line 2204
    invoke-virtual {p0, v4}, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2205
    iget-boolean v5, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->o:Z

    if-eqz v5, :cond_7

    iget-boolean v5, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->p:Z

    if-eqz v5, :cond_7

    .line 2206
    invoke-static {p0, v2}, Lcom/coloros/settings/utils/bb;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    .line 2207
    invoke-static {p0, v1}, Lcom/coloros/settings/utils/bb;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    .line 2208
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ")"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2209
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2210
    iput v2, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->b:I

    .line 2211
    iput v1, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->c:I

    .line 2212
    invoke-static {p0}, Lcom/coloros/settings/utils/ba;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x2

    .line 2215
    iput v0, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->d:I

    const/4 v0, 0x3

    .line 2216
    iput v0, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->e:I

    goto :goto_3

    .line 2219
    :cond_7
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2220
    iput v2, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->b:I

    .line 2221
    invoke-static {p0}, Lcom/coloros/settings/utils/ba;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2222
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2223
    iput v1, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->d:I

    :cond_8
    :goto_3
    const v0, 0x7f121424

    .line 2227
    invoke-virtual {p0, v0}, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2228
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->f:I

    .line 2229
    invoke-static {p0}, Lcom/coloros/settings/utils/ba;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    const v0, 0x7f121426

    .line 2230
    invoke-virtual {p0, v0}, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2231
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->g:I

    .line 2233
    :cond_9
    sget-boolean v0, Lcom/coloros/settings/a;->a:Z

    if-nez v0, :cond_a

    const v0, 0x7f121425

    .line 2234
    invoke-virtual {p0, v0}, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2235
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->h:I

    .line 2238
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Item position: mPhoneRingtonSim1Pos = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mPhoneRingtonSim2Pos = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mMessageRingtonSim1Pos = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->d:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mMessageRingtonSim2Pos = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->e:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mAlarmClockRingtonPos = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->f:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mContactsRingtonePos = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->g:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mCalendarRingtonePos = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->h:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2193
    new-instance v0, Lcolor/support/v7/app/AlertDialog$Builder;

    const v2, 0x7f1303b1

    invoke-direct {v0, p0, v2}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 2194
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setDialogType(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    .line 2195
    invoke-virtual {v0, v1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 2196
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->q:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, p1, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->show()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->n:Landroid/app/Dialog;

    .line 2197
    iget-object p1, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->n:Landroid/app/Dialog;

    new-instance v0, Lcom/coloros/settings/third/-$$Lambda$ColorRingtoneSelectActivity$_QqikLlGsJRtbCop09jr7fBSmsc;

    invoke-direct {v0, p0}, Lcom/coloros/settings/third/-$$Lambda$ColorRingtoneSelectActivity$_QqikLlGsJRtbCop09jr7fBSmsc;-><init>(Lcom/coloros/settings/third/ColorRingtoneSelectActivity;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2198
    iget-object p1, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->n:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const v0, 0x3e4ccccd    # 0.2f

    invoke-virtual {p1, v0}, Landroid/view/Window;->setDimAmount(F)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_4

    .line 150
    :catch_0
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f1202c5

    invoke-virtual {p0, v1}, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f120e9c

    .line 151
    invoke-virtual {p0, v1}, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 152
    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 153
    invoke-direct {p0}, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 157
    invoke-static {v3, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-virtual {v4}, Landroid/media/MediaPlayer;->release()V

    return-void

    .line 157
    :goto_4
    invoke-static {v3, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-virtual {v4}, Landroid/media/MediaPlayer;->release()V

    .line 161
    throw p1
.end method

.method protected onDestroy()V
    .locals 2

    const-string v0, "SetRingtoneActivity"

    const-string v1, "onDestroy, start"

    .line 181
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2392
    iget-boolean v0, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->l:Z

    if-eqz v0, :cond_0

    .line 2393
    iget-object v0, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->r:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 183
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 185
    iget-object v0, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->n:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->n:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 173
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 174
    iget-object v0, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->n:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->n:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method
