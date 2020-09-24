.class public final Lcom/android/settings/bluetooth/e;
.super Ljava/lang/Object;
.source "BluetoothFeatureProviderImpl.java"

# interfaces
.implements Lcom/android/settings/bluetooth/d;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/settings/bluetooth/e;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Landroid/bluetooth/BluetoothDevice;)Landroid/net/Uri;
    .locals 1

    const/16 v0, 0x10

    .line 36
    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothDevice;->getMetadata(I)[B

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 38
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method
