.class public Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "PowerOffPromptActivity.java"


# instance fields
.field private a:Landroid/os/PowerManager$WakeLock;

.field private b:Z

.field private c:Lcolor/support/v7/app/AlertDialog;

.field private d:I

.field private e:Landroid/os/CountDownTimer;

.field private f:Landroid/content/BroadcastReceiver;

.field private g:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity;->b:Z

    const/16 v0, 0x3c

    .line 53
    iput v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity;->d:I

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity;->e:Landroid/os/CountDownTimer;

    .line 56
    new-instance v0, Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity$1;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity$1;-><init>(Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity;->f:Landroid/content/BroadcastReceiver;

    .line 144
    new-instance v0, Lcom/coloros/settings/feature/othersettings/timepower/-$$Lambda$PowerOffPromptActivity$Nm1Ydl1TxV_Wv2Gix2f47LD8C-8;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/othersettings/timepower/-$$Lambda$PowerOffPromptActivity$Nm1Ydl1TxV_Wv2Gix2f47LD8C-8;-><init>(Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity;->g:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity;)Landroid/os/CountDownTimer;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity;->e:Landroid/os/CountDownTimer;

    return-object p0
.end method

.method private a()V
    .locals 4

    .line 190
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity;->a:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v0, 0x0

    .line 192
    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity;->a:Landroid/os/PowerManager$WakeLock;

    :cond_0
    const-string v0, "power"

    .line 194
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const v1, 0x1000000a

    const-string v2, "PowerOffPromptActivity"

    .line 195
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity;->a:Landroid/os/PowerManager$WakeLock;

    .line 196
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const/4 v0, 0x1

    .line 197
    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity;->a(Z)V

    .line 198
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.intent.action.REQUEST_SHUTDOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const-string v3, "android.intent.extra.KEY_CONFIRM"

    .line 199
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 200
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 202
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "beginShutdown: msg: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :goto_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity;->finish()V

    return-void
.end method

.method private synthetic a(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x2

    if-eq p2, p1, :cond_1

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 147
    :cond_0
    invoke-direct {p0}, Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity;->a()V

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 150
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity;->a(Z)V

    .line 151
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity;->finish()V

    :goto_0
    return-void
.end method

.method private a(Z)V
    .locals 3

    .line 210
    invoke-static {p0}, Lcom/coloros/settings/feature/othersettings/timepower/c;->a(Landroid/content/Context;)Lcom/coloros/settings/feature/othersettings/timepower/b;

    move-result-object v0

    .line 3090
    iget v1, v0, Lcom/coloros/settings/feature/othersettings/timepower/b;->g:I

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 212
    invoke-static {v2}, Lcom/coloros/settings/feature/othersettings/timepower/c;->a(Z)I

    move-result v1

    .line 3094
    iput v1, v0, Lcom/coloros/settings/feature/othersettings/timepower/b;->h:I

    .line 213
    invoke-static {p0, v0}, Lcom/coloros/settings/feature/othersettings/timepower/c;->a(Landroid/content/Context;Lcom/coloros/settings/feature/othersettings/timepower/b;)Z

    :cond_0
    if-nez p1, :cond_1

    .line 216
    invoke-static {p0, v2}, Lcom/coloros/settings/feature/othersettings/timepower/c;->a(Landroid/content/Context;I)V

    :cond_1
    return-void
.end method

.method private synthetic a(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 108
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/4 p2, 0x0

    const/4 p3, 0x4

    if-ne p1, p3, :cond_0

    .line 109
    invoke-direct {p0, p2}, Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity;->a(Z)V

    .line 110
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity;->finish()V

    :cond_0
    return p2
.end method

.method static synthetic b(Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity;)Lcolor/support/v7/app/AlertDialog;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity;->c:Lcolor/support/v7/app/AlertDialog;

    return-object p0
.end method

.method static synthetic c(Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity;)I
    .locals 1

    .line 45
    iget v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity;->d:I

    return v0
.end method

.method static synthetic d(Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity;->a()V

    return-void
.end method

.method public static synthetic lambda$-nrO4lbEiwhyY0oFzEvigmQDMU8(Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity;->a(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$Nm1Ydl1TxV_Wv2Gix2f47LD8C-8(Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity;->a(Landroid/content/DialogInterface;I)V

    return-void
.end method


# virtual methods
.method public attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 71
    invoke-static {p1}, Lcom/coloros/settings/utils/o;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public finish()V
    .locals 2

    .line 167
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->finish()V

    const v0, 0x7f010073

    const v1, 0x7f010074

    .line 168
    invoke-virtual {p0, v0, v1}, Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    const/4 v0, 0x0

    .line 161
    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity;->a(Z)V

    .line 162
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 76
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onCreate action="

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PowerOffPromptActivity"

    invoke-static {v2, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.android.settings.Shutdown"

    .line 79
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    .line 80
    iput-boolean v4, p0, Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity;->b:Z

    goto :goto_0

    :cond_0
    const-string v1, "com.android.settings.ShutdownWhenLocked"

    .line 81
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    iput-boolean v3, p0, Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity;->b:Z

    .line 84
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity;->b:Z

    if-eqz v0, :cond_2

    .line 1224
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d4

    const v5, 0x780480

    invoke-direct {v0, v1, v5}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    .line 1226
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1227
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    .line 1228
    iget-boolean v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity;->b:Z

    if-eqz v0, :cond_2

    .line 1229
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    :cond_2
    const-string v0, "power"

    .line 87
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const v1, 0x30000001

    .line 88
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity;->a:Landroid/os/PowerManager$WakeLock;

    .line 91
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 92
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PHONE_STATE"

    .line 93
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 94
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    if-eqz p1, :cond_3

    const-string v0, "left_time"

    .line 96
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 97
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity;->d:I

    .line 2128
    :cond_3
    new-instance p1, Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity$2;

    iget v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity;->d:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-direct {p1, p0, v0, v1}, Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity$2;-><init>(Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity;J)V

    .line 100
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity;->e:Landroid/os/CountDownTimer;

    .line 101
    new-instance p1, Lcolor/support/v7/app/AlertDialog$Builder;

    const v0, 0x7f1303b1

    invoke-direct {p1, p0, v0}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v0, 0x7f12149b

    .line 102
    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f1216a2

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity;->g:Landroid/content/DialogInterface$OnClickListener;

    .line 103
    invoke-virtual {p1, v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 v0, 0x1040000

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity;->g:Landroid/content/DialogInterface$OnClickListener;

    .line 104
    invoke-virtual {p1, v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f1216a3

    new-array v1, v3, [Ljava/lang/Object;

    iget v2, p0, Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity;->d:I

    .line 106
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    .line 105
    invoke-virtual {p0, v0, v1}, Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/coloros/settings/feature/othersettings/timepower/-$$Lambda$PowerOffPromptActivity$-nrO4lbEiwhyY0oFzEvigmQDMU8;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/othersettings/timepower/-$$Lambda$PowerOffPromptActivity$-nrO4lbEiwhyY0oFzEvigmQDMU8;-><init>(Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity;)V

    .line 107
    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 114
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity;->c:Lcolor/support/v7/app/AlertDialog;

    .line 115
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity;->c:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog;->show()V

    .line 117
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity;->c:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 119
    invoke-virtual {p1, v4}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    .line 120
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 121
    sget v1, Lcom/color/compat/view/WindowManagerNative$LayoutParamsNative;->IGNORE_HOME_MENU_KEY:I

    invoke-static {v0, v1}, Lcom/color/compat/view/WindowManagerNative$LayoutParamsNative;->setHomeAndMenuKeyState(Landroid/view/WindowManager$LayoutParams;I)V

    .line 122
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 124
    :cond_4
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity;->e:Landroid/os/CountDownTimer;

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "PowerOffPromptActivity"

    const-string v1, "onDestroy"

    .line 173
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 175
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity;->c:Lcolor/support/v7/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog;->dismiss()V

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity;->e:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    .line 179
    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity;->e:Landroid/os/CountDownTimer;

    .line 180
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity;->a:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_1

    .line 181
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 182
    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity;->a:Landroid/os/PowerManager$WakeLock;

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity;->f:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    .line 185
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_2
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 235
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 236
    iget v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity;->d:I

    const-string v1, "left_time"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
