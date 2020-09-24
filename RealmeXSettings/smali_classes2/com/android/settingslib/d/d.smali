.class public final Lcom/android/settingslib/d/d;
.super Ljava/lang/Object;
.source "BluetoothDeviceFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/d/d$f;,
        Lcom/android/settingslib/d/d$g;,
        Lcom/android/settingslib/d/d$h;,
        Lcom/android/settingslib/d/d$b;,
        Lcom/android/settingslib/d/d$d;,
        Lcom/android/settingslib/d/d$i;,
        Lcom/android/settingslib/d/d$c;,
        Lcom/android/settingslib/d/d$a;,
        Lcom/android/settingslib/d/d$e;
    }
.end annotation


# static fields
.field public static final a:Lcom/android/settingslib/d/d$e;

.field public static final b:Lcom/android/settingslib/d/d$e;

.field public static final c:Lcom/android/settingslib/d/d$e;

.field private static final d:[Lcom/android/settingslib/d/d$e;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 40
    new-instance v0, Lcom/android/settingslib/d/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/settingslib/d/d$a;-><init>(B)V

    sput-object v0, Lcom/android/settingslib/d/d;->a:Lcom/android/settingslib/d/d$e;

    .line 43
    new-instance v0, Lcom/android/settingslib/d/d$c;

    invoke-direct {v0, v1}, Lcom/android/settingslib/d/d$c;-><init>(B)V

    sput-object v0, Lcom/android/settingslib/d/d;->b:Lcom/android/settingslib/d/d$e;

    .line 46
    new-instance v0, Lcom/android/settingslib/d/d$i;

    invoke-direct {v0, v1}, Lcom/android/settingslib/d/d$i;-><init>(B)V

    sput-object v0, Lcom/android/settingslib/d/d;->c:Lcom/android/settingslib/d/d$e;

    const/4 v0, 0x5

    .line 49
    new-array v0, v0, [Lcom/android/settingslib/d/d$e;

    sget-object v2, Lcom/android/settingslib/d/d;->a:Lcom/android/settingslib/d/d$e;

    aput-object v2, v0, v1

    new-instance v2, Lcom/android/settingslib/d/d$b;

    invoke-direct {v2, v1}, Lcom/android/settingslib/d/d$b;-><init>(B)V

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-instance v2, Lcom/android/settingslib/d/d$h;

    invoke-direct {v2, v1}, Lcom/android/settingslib/d/d$h;-><init>(B)V

    const/4 v3, 0x2

    aput-object v2, v0, v3

    new-instance v2, Lcom/android/settingslib/d/d$g;

    invoke-direct {v2, v1}, Lcom/android/settingslib/d/d$g;-><init>(B)V

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-instance v2, Lcom/android/settingslib/d/d$f;

    invoke-direct {v2, v1}, Lcom/android/settingslib/d/d$f;-><init>(B)V

    const/4 v1, 0x4

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settingslib/d/d;->d:[Lcom/android/settingslib/d/d$e;

    return-void
.end method

.method public static a(I)Lcom/android/settingslib/d/d$e;
    .locals 2

    if-ltz p0, :cond_0

    .line 69
    sget-object v0, Lcom/android/settingslib/d/d;->d:[Lcom/android/settingslib/d/d$e;

    array-length v1, v0

    if-ge p0, v1, :cond_0

    .line 70
    aget-object p0, v0, p0

    return-object p0

    .line 72
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid filter type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " for device picker"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BluetoothDeviceFilter"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    sget-object p0, Lcom/android/settingslib/d/d;->a:Lcom/android/settingslib/d/d$e;

    return-object p0
.end method
