.class public Lcom/android/systemui/classifier/FalsingManagerFactory;
.super Ljava/lang/Object;
.source "FalsingManagerFactory.java"


# static fields
.field private static sInstance:Lcom/android/systemui/plugins/FalsingManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/plugins/FalsingManager;
    .locals 0

    .line 38
    sget-object p0, Lcom/android/systemui/classifier/FalsingManagerFactory;->sInstance:Lcom/android/systemui/plugins/FalsingManager;

    if-nez p0, :cond_0

    .line 39
    const-class p0, Lcom/android/systemui/plugins/FalsingManager;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/plugins/FalsingManager;

    sput-object p0, Lcom/android/systemui/classifier/FalsingManagerFactory;->sInstance:Lcom/android/systemui/plugins/FalsingManager;

    .line 41
    :cond_0
    sget-object p0, Lcom/android/systemui/classifier/FalsingManagerFactory;->sInstance:Lcom/android/systemui/plugins/FalsingManager;

    return-object p0
.end method