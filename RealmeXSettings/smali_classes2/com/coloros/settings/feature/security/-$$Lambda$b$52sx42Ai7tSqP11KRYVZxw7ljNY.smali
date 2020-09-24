.class public final synthetic Lcom/coloros/settings/feature/security/-$$Lambda$b$52sx42Ai7tSqP11KRYVZxw7ljNY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/coloros/settings/feature/security/-$$Lambda$b$52sx42Ai7tSqP11KRYVZxw7ljNY;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coloros/settings/feature/security/-$$Lambda$b$52sx42Ai7tSqP11KRYVZxw7ljNY;

    invoke-direct {v0}, Lcom/coloros/settings/feature/security/-$$Lambda$b$52sx42Ai7tSqP11KRYVZxw7ljNY;-><init>()V

    sput-object v0, Lcom/coloros/settings/feature/security/-$$Lambda$b$52sx42Ai7tSqP11KRYVZxw7ljNY;->INSTANCE:Lcom/coloros/settings/feature/security/-$$Lambda$b$52sx42Ai7tSqP11KRYVZxw7ljNY;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/coloros/settingslib/applications/ApplicationsState$a;

    invoke-static {p1}, Lcom/coloros/settings/feature/security/b;->lambda$52sx42Ai7tSqP11KRYVZxw7ljNY(Lcom/coloros/settingslib/applications/ApplicationsState$a;)Z

    move-result p1

    return p1
.end method
