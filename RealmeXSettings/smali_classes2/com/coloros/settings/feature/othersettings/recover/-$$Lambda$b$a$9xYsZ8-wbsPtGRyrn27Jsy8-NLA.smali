.class public final synthetic Lcom/coloros/settings/feature/othersettings/recover/-$$Lambda$b$a$9xYsZ8-wbsPtGRyrn27Jsy8-NLA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/coloros/settings/feature/othersettings/recover/-$$Lambda$b$a$9xYsZ8-wbsPtGRyrn27Jsy8-NLA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coloros/settings/feature/othersettings/recover/-$$Lambda$b$a$9xYsZ8-wbsPtGRyrn27Jsy8-NLA;

    invoke-direct {v0}, Lcom/coloros/settings/feature/othersettings/recover/-$$Lambda$b$a$9xYsZ8-wbsPtGRyrn27Jsy8-NLA;-><init>()V

    sput-object v0, Lcom/coloros/settings/feature/othersettings/recover/-$$Lambda$b$a$9xYsZ8-wbsPtGRyrn27Jsy8-NLA;->INSTANCE:Lcom/coloros/settings/feature/othersettings/recover/-$$Lambda$b$a$9xYsZ8-wbsPtGRyrn27Jsy8-NLA;

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

    check-cast p1, Landroid/content/pm/ApplicationInfo;

    invoke-static {p1}, Lcom/coloros/settings/feature/othersettings/recover/b$a;->lambda$9xYsZ8-wbsPtGRyrn27Jsy8-NLA(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
