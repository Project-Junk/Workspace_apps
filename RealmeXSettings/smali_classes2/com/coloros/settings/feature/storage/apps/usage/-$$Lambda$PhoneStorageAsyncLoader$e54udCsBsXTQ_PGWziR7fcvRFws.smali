.class public final synthetic Lcom/coloros/settings/feature/storage/apps/usage/-$$Lambda$PhoneStorageAsyncLoader$e54udCsBsXTQ_PGWziR7fcvRFws;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/coloros/settings/feature/storage/apps/usage/-$$Lambda$PhoneStorageAsyncLoader$e54udCsBsXTQ_PGWziR7fcvRFws;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coloros/settings/feature/storage/apps/usage/-$$Lambda$PhoneStorageAsyncLoader$e54udCsBsXTQ_PGWziR7fcvRFws;

    invoke-direct {v0}, Lcom/coloros/settings/feature/storage/apps/usage/-$$Lambda$PhoneStorageAsyncLoader$e54udCsBsXTQ_PGWziR7fcvRFws;-><init>()V

    sput-object v0, Lcom/coloros/settings/feature/storage/apps/usage/-$$Lambda$PhoneStorageAsyncLoader$e54udCsBsXTQ_PGWziR7fcvRFws;->INSTANCE:Lcom/coloros/settings/feature/storage/apps/usage/-$$Lambda$PhoneStorageAsyncLoader$e54udCsBsXTQ_PGWziR7fcvRFws;

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

    check-cast p1, Landroid/content/pm/UserInfo;

    check-cast p2, Landroid/content/pm/UserInfo;

    invoke-static {p1, p2}, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->lambda$e54udCsBsXTQ_PGWziR7fcvRFws(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)I

    move-result p1

    return p1
.end method
