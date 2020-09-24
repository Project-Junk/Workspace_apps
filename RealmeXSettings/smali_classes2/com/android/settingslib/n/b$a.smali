.class final Lcom/android/settingslib/n/b$a;
.super Ljava/lang/Object;
.source "BluetoothMediaManager.java"

# interfaces
.implements Lcom/android/settingslib/d/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/n/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settingslib/n/b;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/n/b;)V
    .locals 0

    .line 340
    iput-object p1, p0, Lcom/android/settingslib/n/b$a;->a:Lcom/android/settingslib/n/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingslib/n/b;B)V
    .locals 0

    .line 340
    invoke-direct {p0, p1}, Lcom/android/settingslib/n/b$a;-><init>(Lcom/android/settingslib/n/b;)V

    return-void
.end method


# virtual methods
.method public final onDeviceAttributesChanged()V
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/android/settingslib/n/b$a;->a:Lcom/android/settingslib/n/b;

    invoke-virtual {v0}, Lcom/android/settingslib/n/b;->f()V

    return-void
.end method
