.class public Lcom/coloros/settings/feature/password/StatementPage;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "StatementPage.java"


# static fields
.field private static final a:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "@.*\\d"

    .line 50
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/feature/password/StatementPage;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 54
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/StatementPage;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, -0x80000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 57
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/StatementPage;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 58
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/StatementPage;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/StatementPage;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    or-int/lit8 v1, v1, 0x10

    invoke-virtual {p1, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    const p1, 0x7f0d0031

    .line 60
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/password/StatementPage;->setContentView(I)V

    const p1, 0x7f0a064b

    .line 62
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/password/StatementPage;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v1, 0x7f0a064c

    .line 63
    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/password/StatementPage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a064a

    .line 64
    invoke-virtual {p0, v2}, Lcom/coloros/settings/feature/password/StatementPage;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 65
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/StatementPage;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 67
    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/StatementPage;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v5, "StatementPage"

    const/4 v6, -0x1

    if-eqz v3, :cond_1

    const-string v7, "title_res_id"

    .line 72
    invoke-virtual {v3, v7, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const-string v8, "statement_type"

    .line 73
    invoke-virtual {v3, v8, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 74
    invoke-virtual {p0, v7}, Lcom/coloros/settings/feature/password/StatementPage;->setTitle(I)V

    goto :goto_0

    :cond_1
    const-string v3, "onCreate intent == null"

    .line 76
    invoke-static {v5, v3}, Lcom/coloros/settings/utils/ak;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/StatementPage;->finish()V

    :goto_0
    const v3, 0x7f0a01a7

    .line 80
    invoke-virtual {p0, v3}, Lcom/coloros/settings/feature/password/StatementPage;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const v7, 0x7f0804bb

    .line 81
    invoke-virtual {v3, v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setStatusBarBackgroundResource(I)V

    .line 82
    invoke-static {p0, v0, v4}, Lcom/coloros/settings/utils/al;->a(Landroid/app/Activity;ZZ)V

    const v7, 0x7f0a03c9

    .line 83
    invoke-virtual {p0, v7}, Lcom/coloros/settings/feature/password/StatementPage;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 84
    invoke-static {p0, v3, v4}, Lcom/coloros/settings/utils/al;->a(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;Z)V

    .line 85
    invoke-static {p0, v7}, Lcom/coloros/settings/utils/al;->c(Landroid/content/Context;Landroid/view/View;)V

    .line 86
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/StatementPage;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/coloros/settings/utils/al;->a(Landroid/content/Context;Landroid/view/Window;)V

    .line 87
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/StatementPage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x7f050063

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_2

    const v3, 0x7f0a020e

    .line 88
    invoke-virtual {p0, v3}, Lcom/coloros/settings/feature/password/StatementPage;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    const/16 v7, 0x8

    .line 90
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    const/4 v3, 0x2

    if-ne v6, v3, :cond_3

    .line 98
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f120978

    const v3, 0x7f120979

    const v4, 0x7f12097a

    goto :goto_1

    :cond_3
    if-ne v6, v4, :cond_4

    .line 103
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f1209d3

    const v3, 0x7f1209d4

    const v4, 0x7f1209d5

    goto :goto_1

    :cond_4
    const-string v3, "onCreate fileName no match"

    .line 108
    invoke-static {v5, v3}, Lcom/coloros/settings/utils/ak;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x4

    .line 109
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    move v3, v0

    move v4, v3

    .line 111
    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 112
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    const p1, 0x7f1204e2

    .line 113
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/password/StatementPage;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 114
    new-instance v0, Landroid/text/SpannableString;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Lcom/coloros/settings/feature/password/StatementPage;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 115
    new-instance v1, Lcom/color/support/widget/ColorClickableSpan;

    invoke-direct {v1, p0}, Lcom/color/support/widget/ColorClickableSpan;-><init>(Landroid/content/Context;)V

    .line 116
    new-instance v3, Lcom/coloros/settings/feature/password/StatementPage$1;

    invoke-direct {v3, p0}, Lcom/coloros/settings/feature/password/StatementPage$1;-><init>(Lcom/coloros/settings/feature/password/StatementPage;)V

    invoke-virtual {v1, v3}, Lcom/color/support/widget/ColorClickableSpan;->setStatusBarClickListener(Lcom/color/support/widget/ColorClickableSpan$SpannableStrClickListener;)V

    .line 130
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr v3, p1

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result p1

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v3, p1, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 131
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1136
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 1137
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/StatementPage;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x106000d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 1138
    new-instance p1, Lcom/coloros/settings/feature/password/StatementPage$2;

    invoke-direct {p1, p0, v2}, Lcom/coloros/settings/feature/password/StatementPage$2;-><init>(Lcom/coloros/settings/feature/password/StatementPage;Landroid/widget/TextView;)V

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 169
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 178
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 172
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/StatementPage;->finish()V

    const/4 p1, 0x1

    return p1
.end method
