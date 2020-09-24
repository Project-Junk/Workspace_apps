.class final Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/preference/Preference$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $contentResolver$inlined:Landroid/content/ContentResolver;

.field final synthetic $iconSize$inlined:I

.field final synthetic $openAppList$inlined:Ljava/util/Set;

.field final synthetic $packageManager$inlined:Landroid/content/pm/PackageManager;

.field final synthetic $packageName:Ljava/lang/String;

.field final synthetic $receiver$0$inlined:Lb/a/s;

.field final synthetic $switchPreference:Lcom/color/support/preference/ColorSwitchPreference;

.field final synthetic this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/color/support/preference/ColorSwitchPreference;Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3;Lb/a/s;Landroid/content/pm/PackageManager;ILjava/util/Set;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1;->$packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1;->$switchPreference:Lcom/color/support/preference/ColorSwitchPreference;

    iput-object p3, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3;

    iput-object p4, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1;->$receiver$0$inlined:Lb/a/s;

    iput-object p5, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1;->$packageManager$inlined:Landroid/content/pm/PackageManager;

    iput p6, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1;->$iconSize$inlined:I

    iput-object p7, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1;->$openAppList$inlined:Ljava/util/Set;

    iput-object p8, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1;->$contentResolver$inlined:Landroid/content/ContentResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    if-eqz p2, :cond_0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    sget-object p2, Lb/a/ak;->a:Lb/a/ak;

    move-object v0, p2

    check-cast v0, Lb/a/s;

    iget-object p2, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3;

    iget-object p2, p2, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3;->$exceptionHandler:Lb/a/n;

    move-object v1, p2

    check-cast v1, La/b/f;

    const/4 v2, 0x0

    new-instance p2, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1$1;

    const/4 v3, 0x0

    invoke-direct {p2, p0, p1, v3}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1$1;-><init>(Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1;ZLa/b/c;)V

    move-object v3, p2

    check-cast v3, La/d/a/m;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lb/a/b;->a(Lb/a/s;La/b/f;Lb/a/u;La/d/a/m;ILjava/lang/Object;)Lb/a/ap;

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance p0, La/o;

    const-string p1, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-direct {p0, p1}, La/o;-><init>(Ljava/lang/String;)V

    throw p0
.end method
