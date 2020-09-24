.class public final synthetic Lcom/android/settings/homepage/contextualcards/-$$Lambda$jmtDrtUWqu-LhbAi4KvsHhHcS3I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/homepage/contextualcards/-$$Lambda$jmtDrtUWqu-LhbAi4KvsHhHcS3I;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/homepage/contextualcards/-$$Lambda$jmtDrtUWqu-LhbAi4KvsHhHcS3I;

    invoke-direct {v0}, Lcom/android/settings/homepage/contextualcards/-$$Lambda$jmtDrtUWqu-LhbAi4KvsHhHcS3I;-><init>()V

    sput-object v0, Lcom/android/settings/homepage/contextualcards/-$$Lambda$jmtDrtUWqu-LhbAi4KvsHhHcS3I;->INSTANCE:Lcom/android/settings/homepage/contextualcards/-$$Lambda$jmtDrtUWqu-LhbAi4KvsHhHcS3I;

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

    check-cast p1, Lcom/android/settings/homepage/contextualcards/b;

    invoke-virtual {p1}, Lcom/android/settings/homepage/contextualcards/b;->a()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
