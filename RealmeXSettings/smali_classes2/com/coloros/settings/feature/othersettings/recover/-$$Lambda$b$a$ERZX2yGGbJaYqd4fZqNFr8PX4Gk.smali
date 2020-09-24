.class public final synthetic Lcom/coloros/settings/feature/othersettings/recover/-$$Lambda$b$a$ERZX2yGGbJaYqd4fZqNFr8PX4Gk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/coloros/settings/feature/othersettings/recover/-$$Lambda$b$a$ERZX2yGGbJaYqd4fZqNFr8PX4Gk;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coloros/settings/feature/othersettings/recover/-$$Lambda$b$a$ERZX2yGGbJaYqd4fZqNFr8PX4Gk;

    invoke-direct {v0}, Lcom/coloros/settings/feature/othersettings/recover/-$$Lambda$b$a$ERZX2yGGbJaYqd4fZqNFr8PX4Gk;-><init>()V

    sput-object v0, Lcom/coloros/settings/feature/othersettings/recover/-$$Lambda$b$a$ERZX2yGGbJaYqd4fZqNFr8PX4Gk;->INSTANCE:Lcom/coloros/settings/feature/othersettings/recover/-$$Lambda$b$a$ERZX2yGGbJaYqd4fZqNFr8PX4Gk;

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

    check-cast p1, Landroid/content/pm/PackageInfo;

    invoke-static {p1}, Lcom/coloros/settings/feature/othersettings/recover/b$a;->lambda$ERZX2yGGbJaYqd4fZqNFr8PX4Gk(Landroid/content/pm/PackageInfo;)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    return-object p1
.end method
