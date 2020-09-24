.class public Lcom/android/systemui/usb/UsbDebuggingActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "UsbDebuggingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/usb/UsbDebuggingActivity$UsbDisconnectedReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UsbDebuggingActivity"


# instance fields
.field private mAlwaysAllow:Landroid/widget/CheckBox;

.field private mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDebuggingActivity$UsbDisconnectedReceiver;

.field private mKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method static synthetic lambda$onCreate$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 97
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 98
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v2

    .line 99
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_2

    const p1, 0x534e4554

    const-string v0, "62187985"

    .line 100
    invoke-static {p1, v0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 101
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f110814

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 103
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_2
    return v1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 p1, 0x1

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    move p2, p1

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    if-eqz p2, :cond_1

    .line 155
    iget-object v1, p0, Lcom/android/systemui/usb/UsbDebuggingActivity;->mAlwaysAllow:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move p1, v0

    :goto_1
    :try_start_0
    const-string v0, "adb"

    .line 157
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 158
    invoke-static {v0}, Landroid/debug/IAdbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/debug/IAdbManager;

    move-result-object v0

    if-eqz p2, :cond_2

    .line 160
    iget-object p2, p0, Lcom/android/systemui/usb/UsbDebuggingActivity;->mKey:Ljava/lang/String;

    invoke-interface {v0, p1, p2}, Landroid/debug/IAdbManager;->allowDebugging(ZLjava/lang/String;)V

    goto :goto_2

    .line 162
    :cond_2
    invoke-interface {v0}, Landroid/debug/IAdbManager;->denyDebugging()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string p2, "UsbDebuggingActivity"

    const-string v0, "Unable to notify Usb service"

    .line 165
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 167
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbDebuggingActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 57
    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbDebuggingActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    .line 58
    invoke-virtual {v0, v1}, Landroid/view/Window;->addSystemFlags(I)V

    const/16 v1, 0x7d8

    .line 59
    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 61
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    const-string v0, "service.adb.tcp.port"

    .line 63
    invoke-static {v0, p1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/android/systemui/usb/UsbDebuggingActivity$UsbDisconnectedReceiver;

    invoke-direct {v0, p0, p0}, Lcom/android/systemui/usb/UsbDebuggingActivity$UsbDisconnectedReceiver;-><init>(Lcom/android/systemui/usb/UsbDebuggingActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/systemui/usb/UsbDebuggingActivity;->mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDebuggingActivity$UsbDisconnectedReceiver;

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbDebuggingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "fingerprints"

    .line 68
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "key"

    .line 69
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/usb/UsbDebuggingActivity;->mKey:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 71
    iget-object v0, p0, Lcom/android/systemui/usb/UsbDebuggingActivity;->mKey:Ljava/lang/String;

    if-nez v0, :cond_1

    goto :goto_0

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/usb/UsbDebuggingActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v2, 0x7f110862

    .line 77
    invoke-virtual {p0, v2}, Lcom/android/systemui/usb/UsbDebuggingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    const v2, 0x7f11085f

    const/4 v3, 0x1

    .line 78
    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, p1

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/usb/UsbDebuggingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    const p1, 0x7f11085d

    .line 79
    invoke-virtual {p0, p1}, Lcom/android/systemui/usb/UsbDebuggingActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    const/high16 p1, 0x1040000

    .line 80
    invoke-virtual {p0, p1}, Lcom/android/systemui/usb/UsbDebuggingActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 81
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 82
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 85
    iget-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 86
    sget v1, Lcom/coloros/common/util/ResourceUtil;->android_layout_always_use_checkbox:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 87
    sget v1, Lcom/coloros/common/util/ResourceUtil;->android_id_alwaysUse:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/systemui/usb/UsbDebuggingActivity;->mAlwaysAllow:Landroid/widget/CheckBox;

    .line 88
    iget-object v1, p0, Lcom/android/systemui/usb/UsbDebuggingActivity;->mAlwaysAllow:Landroid/widget/CheckBox;

    const v2, 0x7f11085e

    invoke-virtual {p0, v2}, Lcom/android/systemui/usb/UsbDebuggingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 91
    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbDebuggingActivity;->setupAlert()V

    .line 95
    sget-object p1, Lcom/android/systemui/usb/-$$Lambda$UsbDebuggingActivity$XWt--qGCtWBJlTLnAvCSF7AuSg8;->INSTANCE:Lcom/android/systemui/usb/-$$Lambda$UsbDebuggingActivity$XWt--qGCtWBJlTLnAvCSF7AuSg8;

    .line 109
    iget-object p0, p0, Lcom/android/systemui/usb/UsbDebuggingActivity;->mAlert:Lcom/android/internal/app/AlertController;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void

    .line 72
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbDebuggingActivity;->finish()V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 139
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStart()V

    .line 140
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 141
    iget-object v1, p0, Lcom/android/systemui/usb/UsbDebuggingActivity;->mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDebuggingActivity$UsbDisconnectedReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/usb/UsbDebuggingActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/android/systemui/usb/UsbDebuggingActivity;->mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDebuggingActivity$UsbDisconnectedReceiver;

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {p0, v0}, Lcom/android/systemui/usb/UsbDebuggingActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 149
    :cond_0
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStop()V

    return-void
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 0

    .line 115
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method
