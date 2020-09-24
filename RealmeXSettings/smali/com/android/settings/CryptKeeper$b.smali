.class final Lcom/android/settings/CryptKeeper$b;
.super Ljava/lang/Object;
.source "CryptKeeper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/CryptKeeper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field final a:Landroid/os/PowerManager$WakeLock;


# direct methods
.method constructor <init>(Landroid/os/PowerManager$WakeLock;)V
    .locals 0

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput-object p1, p0, Lcom/android/settings/CryptKeeper$b;->a:Landroid/os/PowerManager$WakeLock;

    return-void
.end method
