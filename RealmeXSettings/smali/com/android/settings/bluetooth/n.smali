.class public final Lcom/android/settings/bluetooth/n;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final a:Lcom/android/settingslib/d/f$a;

.field private static final b:Lcom/android/settingslib/d/q$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 136
    new-instance v0, Lcom/android/settings/bluetooth/n$1;

    invoke-direct {v0}, Lcom/android/settings/bluetooth/n$1;-><init>()V

    sput-object v0, Lcom/android/settings/bluetooth/n;->a:Lcom/android/settingslib/d/f$a;

    .line 145
    new-instance v0, Lcom/android/settings/bluetooth/n$2;

    invoke-direct {v0}, Lcom/android/settings/bluetooth/n$2;-><init>()V

    sput-object v0, Lcom/android/settings/bluetooth/n;->b:Lcom/android/settingslib/d/q$a;

    return-void
.end method

.method static a(Landroid/content/Context;Lcolor/support/v7/app/AlertDialog;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog;
    .locals 2

    const v0, 0x104000a

    if-nez p1, :cond_0

    .line 74
    new-instance p1, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 75
    invoke-virtual {p1, v0, p2}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p0

    const/high16 p1, 0x1040000

    const/4 p2, 0x0

    .line 76
    invoke-virtual {p0, p1, p2}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p0

    .line 77
    invoke-virtual {p0}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 80
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog;->dismiss()V

    .line 83
    :cond_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    const/4 v0, -0x1

    .line 84
    invoke-virtual {p1, v0, p0, p2}, Lcolor/support/v7/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 87
    :goto_0
    invoke-virtual {p1, p3}, Lcolor/support/v7/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 88
    invoke-virtual {p1, p4}, Lcolor/support/v7/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 89
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog;->show()V

    return-object p1
.end method

.method static synthetic a()Lcom/android/settingslib/d/f$a;
    .locals 1

    .line 43
    sget-object v0, Lcom/android/settings/bluetooth/n;->a:Lcom/android/settingslib/d/f$a;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/android/settingslib/d/q;
    .locals 1

    .line 124
    sget-object v0, Lcom/android/settings/bluetooth/n;->b:Lcom/android/settingslib/d/q$a;

    invoke-static {p0, v0}, Lcom/android/settingslib/d/q;->a(Landroid/content/Context;Lcom/android/settingslib/d/q$a;)Lcom/android/settingslib/d/q;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 128
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    const p1, 0x7f121757

    .line 131
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .line 1124
    sget-object v0, Lcom/android/settings/bluetooth/n;->b:Lcom/android/settingslib/d/q$a;

    invoke-static {p0, v0}, Lcom/android/settingslib/d/q;->a(Landroid/content/Context;Lcom/android/settingslib/d/q$a;)Lcom/android/settingslib/d/q;

    move-result-object v0

    const/4 v1, 0x1

    .line 2106
    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const p1, 0x7f1203e6

    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2132
    iget-object v2, v0, Lcom/android/settingslib/d/q;->a:Ljava/lang/ref/WeakReference;

    const/4 v4, 0x0

    if-nez v2, :cond_0

    move-object v2, v4

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/android/settingslib/d/q;->a:Ljava/lang/ref/WeakReference;

    .line 2134
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    .line 2138
    :goto_0
    iget-object v5, v0, Lcom/android/settingslib/d/q;->a:Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_1

    iget-object v0, v0, Lcom/android/settingslib/d/q;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    if-eqz v1, :cond_2

    .line 2110
    :try_start_0
    new-instance p0, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-direct {p0, v2}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f1203b2

    .line 2111
    invoke-virtual {p0, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p0

    .line 2112
    invoke-virtual {p0, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x104000a

    .line 2113
    invoke-virtual {p0, p1, v4}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p0

    .line 2114
    invoke-virtual {p0}, Lcolor/support/v7/app/AlertDialog$Builder;->show()Lcolor/support/v7/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "BluetoothUtils"

    const-string v0, "Cannot show error dialog."

    .line 2116
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 2119
    :cond_2
    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 2

    .line 154
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "ble_scan_always_enabled"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    return v1

    :cond_0
    return v0
.end method
