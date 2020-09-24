.class public final synthetic Lcom/android/systemui/qs/-$$Lambda$QSTileHost$sip37eSG6wpZ0BfWCQCwFvD9UyM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/qs/-$$Lambda$QSTileHost$sip37eSG6wpZ0BfWCQCwFvD9UyM;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/-$$Lambda$QSTileHost$sip37eSG6wpZ0BfWCQCwFvD9UyM;

    invoke-direct {v0}, Lcom/android/systemui/qs/-$$Lambda$QSTileHost$sip37eSG6wpZ0BfWCQCwFvD9UyM;-><init>()V

    sput-object v0, Lcom/android/systemui/qs/-$$Lambda$QSTileHost$sip37eSG6wpZ0BfWCQCwFvD9UyM;->INSTANCE:Lcom/android/systemui/qs/-$$Lambda$QSTileHost$sip37eSG6wpZ0BfWCQCwFvD9UyM;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile;

    invoke-static {p1}, Lcom/android/systemui/qs/QSTileHost;->lambda$destroy$1(Lcom/android/systemui/plugins/qs/QSTile;)V

    return-void
.end method
