.class final Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$refreshCount$1;
.super La/b/b/a/j;

# interfaces
.implements La/d/a/m;


# annotations
.annotation runtime La/b/b/a/e;
    b = "DarkModeSettingFragment.kt"
    c = {}
    d = "invokeSuspend"
    e = "com.color.darkmode.ui.fragment.DarkModeSettingFragment$refreshCount$1"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->refreshCount()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "La/b/b/a/j;",
        "La/d/a/m<",
        "Lb/a/s;",
        "La/b/c<",
        "-",
        "La/r;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field label:I

.field private p$:Lb/a/s;

.field final synthetic this$0:Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;


# direct methods
.method constructor <init>(Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;La/b/c;)V
    .locals 0

    iput-object p1, p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$refreshCount$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, La/b/b/a/j;-><init>(ILa/b/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;La/b/c;)La/b/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "La/b/c<",
            "*>;)",
            "La/b/c<",
            "La/r;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p2, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$refreshCount$1;

    iget-object p0, p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$refreshCount$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;

    invoke-direct {v0, p0, p2}, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$refreshCount$1;-><init>(Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;La/b/c;)V

    check-cast p1, Lb/a/s;

    iput-object p1, v0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$refreshCount$1;->p$:Lb/a/s;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, La/b/c;

    invoke-virtual {p0, p1, p2}, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$refreshCount$1;->create(Ljava/lang/Object;La/b/c;)La/b/c;

    move-result-object p0

    check-cast p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$refreshCount$1;

    sget-object p1, La/r;->a:La/r;

    invoke-virtual {p0, p1}, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$refreshCount$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, La/b/a/b;->a()Ljava/lang/Object;

    iget v0, p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$refreshCount$1;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, La/l;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$refreshCount$1;->p$:Lb/a/s;

    iget-object p1, p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$refreshCount$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;

    invoke-virtual {p1}, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    iget-object v0, p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$refreshCount$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;

    invoke-virtual {v0}, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, La/d/b/g;->a()V

    :cond_0
    const-string v1, "context!!"

    invoke-static {v0, v1}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->getSupportApplicationCount(Landroid/content/Context;)[I

    move-result-object p1

    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget p1, p1, v1

    iget-object v1, p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$refreshCount$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;

    invoke-static {v1}, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->access$getMHandler$p(Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$refreshCount$1$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$refreshCount$1$1;-><init>(Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$refreshCount$1;II)V

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    sget-object p0, La/r;->a:La/r;

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
