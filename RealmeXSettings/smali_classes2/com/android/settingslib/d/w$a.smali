.class final Lcom/android/settingslib/d/w$a;
.super Ljava/lang/Object;
.source "PanProfile.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/d/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settingslib/d/w;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/d/w;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/android/settingslib/d/w$a;->a:Lcom/android/settingslib/d/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingslib/d/w;B)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/android/settingslib/d/w$a;-><init>(Lcom/android/settingslib/d/w;)V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 0

    .line 57
    iget-object p1, p0, Lcom/android/settingslib/d/w$a;->a:Lcom/android/settingslib/d/w;

    check-cast p2, Landroid/bluetooth/BluetoothPan;

    .line 1036
    iput-object p2, p1, Lcom/android/settingslib/d/w;->a:Landroid/bluetooth/BluetoothPan;

    const/4 p2, 0x1

    .line 2036
    iput-boolean p2, p1, Lcom/android/settingslib/d/w;->b:Z

    return-void
.end method

.method public final onServiceDisconnected(I)V
    .locals 1

    .line 62
    iget-object p1, p0, Lcom/android/settingslib/d/w$a;->a:Lcom/android/settingslib/d/w;

    const/4 v0, 0x0

    .line 3036
    iput-boolean v0, p1, Lcom/android/settingslib/d/w;->b:Z

    return-void
.end method
