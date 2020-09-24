.class public final synthetic Lcom/android/settingslib/d/-$$Lambda$a$O8UqwYtc1jznDBeYgYeutuFameI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settingslib/d/-$$Lambda$a$O8UqwYtc1jznDBeYgYeutuFameI;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settingslib/d/-$$Lambda$a$O8UqwYtc1jznDBeYgYeutuFameI;

    invoke-direct {v0}, Lcom/android/settingslib/d/-$$Lambda$a$O8UqwYtc1jznDBeYgYeutuFameI;-><init>()V

    sput-object v0, Lcom/android/settingslib/d/-$$Lambda$a$O8UqwYtc1jznDBeYgYeutuFameI;->INSTANCE:Lcom/android/settingslib/d/-$$Lambda$a$O8UqwYtc1jznDBeYgYeutuFameI;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroid/bluetooth/BluetoothCodecConfig;

    check-cast p2, Landroid/bluetooth/BluetoothCodecConfig;

    invoke-static {p1, p2}, Lcom/android/settingslib/d/a;->lambda$O8UqwYtc1jznDBeYgYeutuFameI(Landroid/bluetooth/BluetoothCodecConfig;Landroid/bluetooth/BluetoothCodecConfig;)I

    move-result p1

    return p1
.end method
