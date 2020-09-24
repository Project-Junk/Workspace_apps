.class public final synthetic Lcom/coloros/settings/feature/homepage/user/-$$Lambda$ColorUserPreferenceController$pMvJc_T42L7TuBcu2lfHWgQsRAI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;

.field private final synthetic f$1:Lcom/coloros/settings/feature/homepage/user/a;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;Lcom/coloros/settings/feature/homepage/user/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/feature/homepage/user/-$$Lambda$ColorUserPreferenceController$pMvJc_T42L7TuBcu2lfHWgQsRAI;->f$0:Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;

    iput-object p2, p0, Lcom/coloros/settings/feature/homepage/user/-$$Lambda$ColorUserPreferenceController$pMvJc_T42L7TuBcu2lfHWgQsRAI;->f$1:Lcom/coloros/settings/feature/homepage/user/a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/user/-$$Lambda$ColorUserPreferenceController$pMvJc_T42L7TuBcu2lfHWgQsRAI;->f$0:Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;

    iget-object v1, p0, Lcom/coloros/settings/feature/homepage/user/-$$Lambda$ColorUserPreferenceController$pMvJc_T42L7TuBcu2lfHWgQsRAI;->f$1:Lcom/coloros/settings/feature/homepage/user/a;

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->lambda$requestAccountInfo$2$ColorUserPreferenceController(Lcom/coloros/settings/feature/homepage/user/a;)V

    return-void
.end method
