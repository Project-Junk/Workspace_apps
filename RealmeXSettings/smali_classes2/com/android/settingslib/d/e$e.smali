.class final Lcom/android/settingslib/d/e$e;
.super Ljava/lang/Object;
.source "BluetoothEventManager.java"

# interfaces
.implements Lcom/android/settingslib/d/e$k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/d/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settingslib/d/e;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/d/e;)V
    .locals 0

    .line 442
    iput-object p1, p0, Lcom/android/settingslib/d/e$e;->a:Lcom/android/settingslib/d/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingslib/d/e;B)V
    .locals 0

    .line 442
    invoke-direct {p0, p1}, Lcom/android/settingslib/d/e$e;-><init>(Lcom/android/settingslib/d/e;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 445
    iget-object p1, p0, Lcom/android/settingslib/d/e$e;->a:Lcom/android/settingslib/d/e;

    .line 1050
    iget-object p1, p1, Lcom/android/settingslib/d/e;->b:Lcom/android/settingslib/d/h;

    .line 445
    invoke-virtual {p1, p3}, Lcom/android/settingslib/d/h;->a(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/d/g;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1485
    invoke-virtual {p1}, Lcom/android/settingslib/d/g;->m()V

    :cond_0
    return-void
.end method
