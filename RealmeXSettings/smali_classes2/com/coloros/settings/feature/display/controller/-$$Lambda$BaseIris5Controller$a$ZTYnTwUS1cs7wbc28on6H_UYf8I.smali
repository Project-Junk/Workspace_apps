.class public final synthetic Lcom/coloros/settings/feature/display/controller/-$$Lambda$BaseIris5Controller$a$ZTYnTwUS1cs7wbc28on6H_UYf8I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic f$0:Landroid/content/Context;

.field private final synthetic f$1:Landroid/widget/CheckBox;

.field private final synthetic f$2:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Landroid/widget/CheckBox;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/feature/display/controller/-$$Lambda$BaseIris5Controller$a$ZTYnTwUS1cs7wbc28on6H_UYf8I;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/coloros/settings/feature/display/controller/-$$Lambda$BaseIris5Controller$a$ZTYnTwUS1cs7wbc28on6H_UYf8I;->f$1:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/coloros/settings/feature/display/controller/-$$Lambda$BaseIris5Controller$a$ZTYnTwUS1cs7wbc28on6H_UYf8I;->f$2:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/-$$Lambda$BaseIris5Controller$a$ZTYnTwUS1cs7wbc28on6H_UYf8I;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/coloros/settings/feature/display/controller/-$$Lambda$BaseIris5Controller$a$ZTYnTwUS1cs7wbc28on6H_UYf8I;->f$1:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/coloros/settings/feature/display/controller/-$$Lambda$BaseIris5Controller$a$ZTYnTwUS1cs7wbc28on6H_UYf8I;->f$2:Landroid/content/DialogInterface$OnClickListener;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/coloros/settings/feature/display/controller/BaseIris5Controller$a;->lambda$ZTYnTwUS1cs7wbc28on6H_UYf8I(Landroid/content/Context;Landroid/widget/CheckBox;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface;I)V

    return-void
.end method
