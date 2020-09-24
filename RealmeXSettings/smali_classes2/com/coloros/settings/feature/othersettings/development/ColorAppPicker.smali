.class public Lcom/coloros/settings/feature/othersettings/development/ColorAppPicker;
.super Lcom/android/settings/development/AppPicker;
.source "ColorAppPicker.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/android/settings/development/AppPicker;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/View;)Lcom/android/settings/development/e;
    .locals 1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 1034
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/settings/development/e;

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    if-nez p2, :cond_1

    const p2, 0x7f0d01b5

    .line 1037
    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 1041
    new-instance p2, Lcom/coloros/settings/feature/othersettings/development/a;

    invoke-direct {p2}, Lcom/coloros/settings/feature/othersettings/development/a;-><init>()V

    .line 1042
    iput-object p1, p2, Lcom/coloros/settings/feature/othersettings/development/a;->a:Landroid/view/View;

    const v0, 0x7f0a009f

    .line 1043
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/coloros/settings/feature/othersettings/development/a;->b:Landroid/widget/TextView;

    const v0, 0x7f0a009d

    .line 1044
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/coloros/settings/feature/othersettings/development/a;->c:Landroid/widget/ImageView;

    const v0, 0x7f0a00a5

    .line 1045
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/coloros/settings/feature/othersettings/development/a;->d:Landroid/widget/TextView;

    const v0, 0x7f0a009a

    .line 1046
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/coloros/settings/feature/othersettings/development/a;->e:Landroid/widget/TextView;

    const v0, 0x7f0a00a0

    .line 1047
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p2, Lcom/coloros/settings/feature/othersettings/development/a;->f:Landroid/widget/CheckBox;

    const v0, 0x7f0a0655

    .line 1048
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p2, Lcom/coloros/settings/feature/othersettings/development/a;->g:Landroid/widget/Button;

    .line 1050
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_1
    return-object p2
.end method

.method public onContentChanged()V
    .locals 5

    .line 61
    invoke-super {p0}, Lcom/android/settings/development/AppPicker;->onContentChanged()V

    .line 62
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/ColorAppPicker;->b:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 63
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/ColorAppPicker;->b:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 64
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/ColorAppPicker;->b:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/development/ColorAppPicker;->b:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v1

    .line 65
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/development/ColorAppPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0703f1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/coloros/settings/feature/othersettings/development/ColorAppPicker;->b:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/coloros/settings/feature/othersettings/development/ColorAppPicker;->b:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getBottom()I

    move-result v4

    .line 64
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ListView;->setPadding(IIII)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 34
    invoke-super {p0, p1}, Lcom/android/settings/development/AppPicker;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d002d

    .line 35
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/othersettings/development/ColorAppPicker;->setContentView(I)V

    .line 37
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/development/ColorAppPicker;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 38
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    or-int/lit16 v1, v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    const v1, 0x7f0a0058

    .line 40
    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/othersettings/development/ColorAppPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const v2, 0x7f0804bb

    .line 41
    invoke-virtual {v1, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setStatusBarBackgroundResource(I)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 42
    invoke-static {p0, v2, v1}, Lcom/coloros/settings/utils/al;->a(Landroid/app/Activity;ZZ)V

    .line 43
    invoke-static {p0, v0, v1}, Lcom/coloros/settings/utils/al;->a(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;Z)V

    const v0, 0x7f0a03c9

    .line 44
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/othersettings/development/ColorAppPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/coloros/settings/utils/al;->c(Landroid/content/Context;Landroid/view/View;)V

    .line 45
    invoke-static {p0, p1}, Lcom/coloros/settings/utils/al;->a(Landroid/content/Context;Landroid/view/Window;)V

    .line 46
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/development/ColorAppPicker;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f050063

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f0a020e

    .line 47
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/othersettings/development/ColorAppPicker;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    .line 49
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/development/ColorAppPicker;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "android.intent.extra.TITLE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 54
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 55
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/othersettings/development/ColorAppPicker;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
