.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$SkMMXE-StHRD8qFZiwSPjIotJcg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$SkMMXE-StHRD8qFZiwSPjIotJcg;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$SkMMXE-StHRD8qFZiwSPjIotJcg;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$SkMMXE-StHRD8qFZiwSPjIotJcg;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$SkMMXE-StHRD8qFZiwSPjIotJcg;->INSTANCE:Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$SkMMXE-StHRD8qFZiwSPjIotJcg;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-static {}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$setWindowState$15()V

    return-void
.end method
