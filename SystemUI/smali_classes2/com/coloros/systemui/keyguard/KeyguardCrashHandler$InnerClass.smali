.class Lcom/coloros/systemui/keyguard/KeyguardCrashHandler$InnerClass;
.super Ljava/lang/Object;
.source "KeyguardCrashHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/KeyguardCrashHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InnerClass"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/coloros/systemui/keyguard/KeyguardCrashHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    new-instance v0, Lcom/coloros/systemui/keyguard/KeyguardCrashHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/systemui/keyguard/KeyguardCrashHandler;-><init>(Lcom/coloros/systemui/keyguard/KeyguardCrashHandler$1;)V

    sput-object v0, Lcom/coloros/systemui/keyguard/KeyguardCrashHandler$InnerClass;->INSTANCE:Lcom/coloros/systemui/keyguard/KeyguardCrashHandler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/coloros/systemui/keyguard/KeyguardCrashHandler;
    .locals 1

    .line 34
    sget-object v0, Lcom/coloros/systemui/keyguard/KeyguardCrashHandler$InnerClass;->INSTANCE:Lcom/coloros/systemui/keyguard/KeyguardCrashHandler;

    return-object v0
.end method
