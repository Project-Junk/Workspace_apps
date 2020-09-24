.class public final synthetic Lcom/coloros/systemui/navbar/-$$Lambda$ColorNavigationBarController$KAS925lR8o3lJoRpbYRErjF0LVc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/coloros/systemui/navbar/ColorNavigationBarController;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/systemui/navbar/ColorNavigationBarController;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/navbar/-$$Lambda$ColorNavigationBarController$KAS925lR8o3lJoRpbYRErjF0LVc;->f$0:Lcom/coloros/systemui/navbar/ColorNavigationBarController;

    iput-boolean p2, p0, Lcom/coloros/systemui/navbar/-$$Lambda$ColorNavigationBarController$KAS925lR8o3lJoRpbYRErjF0LVc;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/coloros/systemui/navbar/-$$Lambda$ColorNavigationBarController$KAS925lR8o3lJoRpbYRErjF0LVc;->f$0:Lcom/coloros/systemui/navbar/ColorNavigationBarController;

    iget-boolean p0, p0, Lcom/coloros/systemui/navbar/-$$Lambda$ColorNavigationBarController$KAS925lR8o3lJoRpbYRErjF0LVc;->f$1:Z

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/navbar/ColorNavigationBarController;->lambda$onDockedStackExistsChanged$0$ColorNavigationBarController(Z)V

    return-void
.end method
