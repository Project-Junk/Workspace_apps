.class final Lcom/android/settingslib/d/y$a;
.super Ljava/lang/Object;
.source "PbapServerProfile.java"

# interfaces
.implements Landroid/bluetooth/BluetoothPbap$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/d/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settingslib/d/y;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/d/y;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/android/settingslib/d/y$a;->a:Lcom/android/settingslib/d/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingslib/d/y;B)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/android/settingslib/d/y$a;-><init>(Lcom/android/settingslib/d/y;)V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/bluetooth/BluetoothPbap;)V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/android/settingslib/d/y$a;->a:Lcom/android/settingslib/d/y;

    invoke-static {v0, p1}, Lcom/android/settingslib/d/y;->a(Lcom/android/settingslib/d/y;Landroid/bluetooth/BluetoothPbap;)Landroid/bluetooth/BluetoothPbap;

    .line 61
    iget-object p1, p0, Lcom/android/settingslib/d/y$a;->a:Lcom/android/settingslib/d/y;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/settingslib/d/y;->a(Lcom/android/settingslib/d/y;Z)Z

    return-void
.end method

.method public final onServiceDisconnected()V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/android/settingslib/d/y$a;->a:Lcom/android/settingslib/d/y;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settingslib/d/y;->a(Lcom/android/settingslib/d/y;Z)Z

    return-void
.end method
