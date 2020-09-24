.class public final synthetic Lcom/android/settings/accessibility/-$$Lambda$eCaYzS8uL-Zk4PJDIfIkx6zIf2c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/accessibility/-$$Lambda$eCaYzS8uL-Zk4PJDIfIkx6zIf2c;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/accessibility/-$$Lambda$eCaYzS8uL-Zk4PJDIfIkx6zIf2c;

    invoke-direct {v0}, Lcom/android/settings/accessibility/-$$Lambda$eCaYzS8uL-Zk4PJDIfIkx6zIf2c;-><init>()V

    sput-object v0, Lcom/android/settings/accessibility/-$$Lambda$eCaYzS8uL-Zk4PJDIfIkx6zIf2c;->INSTANCE:Lcom/android/settings/accessibility/-$$Lambda$eCaYzS8uL-Zk4PJDIfIkx6zIf2c;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/settings/accessibility/VibrationPreferenceFragment$b;

    invoke-virtual {p1}, Lcom/android/settings/accessibility/VibrationPreferenceFragment$b;->d()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
