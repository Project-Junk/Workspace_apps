.class public Lcom/coloros/settings/OppoEditPinActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "OppoEditPinActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private a:Lcom/color/support/widget/ColorEditText;

.field private b:Lcom/color/support/widget/ColorNumericKeyboard;

.field private c:Landroid/view/MenuItem;

.field private d:I

.field private e:Lcom/coloros/settings/receiver/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcom/coloros/settings/OppoEditPinActivity;->b:Lcom/color/support/widget/ColorNumericKeyboard;

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/OppoEditPinActivity;)Lcom/color/support/widget/ColorNumericKeyboard;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/coloros/settings/OppoEditPinActivity;->b:Lcom/color/support/widget/ColorNumericKeyboard;

    return-object p0
.end method

.method private a(ILjava/lang/String;)V
    .locals 2

    .line 247
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, -0x1

    if-ne v1, p1, :cond_0

    if-eqz p2, :cond_0

    const-string v1, "pin"

    .line 249
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/coloros/settings/OppoEditPinActivity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/OppoEditPinActivity;ILjava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/OppoEditPinActivity;->a(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/coloros/settings/OppoEditPinActivity;)I
    .locals 0

    .line 33
    iget p0, p0, Lcom/coloros/settings/OppoEditPinActivity;->d:I

    return p0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 231
    iget-object v0, p0, Lcom/coloros/settings/OppoEditPinActivity;->c:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 232
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 44
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-static {p0}, Lcom/coloros/settings/utils/al;->a(Landroid/app/Activity;)V

    const v0, 0x7f0d0222

    .line 46
    invoke-virtual {p0, v0}, Lcom/coloros/settings/OppoEditPinActivity;->setContentView(I)V

    if-eqz p1, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/coloros/settings/OppoEditPinActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    const/4 v1, -0x1

    const-string v2, "key_ui_mode"

    .line 50
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v1, :cond_0

    if-eq p1, v0, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/coloros/settings/OppoEditPinActivity;->finish()V

    :cond_0
    const p1, 0x7f0a070a

    .line 56
    invoke-virtual {p0, p1}, Lcom/coloros/settings/OppoEditPinActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcolor/support/v7/widget/Toolbar;

    const/4 v0, 0x1

    .line 57
    invoke-virtual {p1, v0}, Lcolor/support/v7/widget/Toolbar;->setIsTitleCenterStyle(Z)V

    .line 58
    invoke-virtual {p0, p1}, Lcom/coloros/settings/OppoEditPinActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 59
    invoke-virtual {p0}, Lcom/coloros/settings/OppoEditPinActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 61
    invoke-virtual {p1, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 64
    :cond_1
    invoke-static {p0, v1, v0}, Lcom/coloros/settings/utils/al;->a(Landroid/app/Activity;ZZ)V

    const p1, 0x7f0a016f

    .line 65
    invoke-virtual {p0, p1}, Lcom/coloros/settings/OppoEditPinActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 66
    instance-of v2, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz v2, :cond_2

    .line 67
    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const v2, 0x7f0804bb

    invoke-virtual {p1, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setStatusBarBackgroundResource(I)V

    .line 69
    :cond_2
    invoke-virtual {p0}, Lcom/coloros/settings/OppoEditPinActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/coloros/settings/utils/al;->a(Landroid/content/Context;Landroid/view/Window;)V

    const p1, 0x7f0a023d

    .line 71
    invoke-virtual {p0, p1}, Lcom/coloros/settings/OppoEditPinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/color/support/widget/ColorEditText;

    iput-object v2, p0, Lcom/coloros/settings/OppoEditPinActivity;->a:Lcom/color/support/widget/ColorEditText;

    const v2, 0x7f0a0362

    .line 72
    invoke-virtual {p0, v2}, Lcom/coloros/settings/OppoEditPinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/color/support/widget/ColorNumericKeyboard;

    iput-object v2, p0, Lcom/coloros/settings/OppoEditPinActivity;->b:Lcom/color/support/widget/ColorNumericKeyboard;

    .line 73
    iget-object v2, p0, Lcom/coloros/settings/OppoEditPinActivity;->b:Lcom/color/support/widget/ColorNumericKeyboard;

    invoke-virtual {v2, v0}, Lcom/color/support/widget/ColorNumericKeyboard;->setEnabled(Z)V

    .line 74
    iget-object v0, p0, Lcom/coloros/settings/OppoEditPinActivity;->b:Lcom/color/support/widget/ColorNumericKeyboard;

    invoke-static {p0}, Lcom/coloros/settings/utils/al;->ac(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/color/support/widget/ColorNumericKeyboard;->setTactileFeedbackEnabled(Z)V

    .line 75
    iget-object v0, p0, Lcom/coloros/settings/OppoEditPinActivity;->b:Lcom/color/support/widget/ColorNumericKeyboard;

    iget-object v2, v0, Lcom/color/support/widget/ColorNumericKeyboard;->mDeleteStyle:Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;

    invoke-virtual {v0, v2}, Lcom/color/support/widget/ColorNumericKeyboard;->setRightStyle(Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;)V

    .line 76
    iget-object v0, p0, Lcom/coloros/settings/OppoEditPinActivity;->b:Lcom/color/support/widget/ColorNumericKeyboard;

    new-instance v2, Lcom/coloros/settings/OppoEditPinActivity$1;

    invoke-direct {v2, p0}, Lcom/coloros/settings/OppoEditPinActivity$1;-><init>(Lcom/coloros/settings/OppoEditPinActivity;)V

    invoke-virtual {v0, v2}, Lcom/color/support/widget/ColorNumericKeyboard;->setOnClickItemListener(Lcom/color/support/widget/ColorNumericKeyboard$OnClickItemListener;)V

    .line 1192
    invoke-virtual {p0}, Lcom/coloros/settings/OppoEditPinActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "title"

    .line 1193
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "message"

    .line 1194
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "subscription"

    .line 1195
    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/coloros/settings/OppoEditPinActivity;->d:I

    .line 1196
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "title="

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " message="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "OppoEditPinActivity"

    invoke-static {v4, v0}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_3

    .line 1198
    invoke-virtual {p0, v2}, Lcom/coloros/settings/OppoEditPinActivity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_3
    if-eqz v3, :cond_4

    const v0, 0x7f0a0739

    .line 1201
    invoke-virtual {p0, v0}, Lcom/coloros/settings/OppoEditPinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1202
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1205
    :cond_4
    iget-object v0, p0, Lcom/coloros/settings/OppoEditPinActivity;->a:Lcom/color/support/widget/ColorEditText;

    const/16 v2, 0x12

    invoke-virtual {v0, v2}, Lcom/color/support/widget/ColorEditText;->setInputType(I)V

    .line 1207
    iget-object v0, p0, Lcom/coloros/settings/OppoEditPinActivity;->a:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v0, p0}, Lcom/color/support/widget/ColorEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1208
    iget-object v0, p0, Lcom/coloros/settings/OppoEditPinActivity;->a:Lcom/color/support/widget/ColorEditText;

    new-instance v2, Lcom/coloros/settings/OppoEditPinActivity$4;

    invoke-direct {v2, p0}, Lcom/coloros/settings/OppoEditPinActivity$4;-><init>(Lcom/coloros/settings/OppoEditPinActivity;)V

    invoke-virtual {v0, v2}, Lcom/color/support/widget/ColorEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 1223
    iget-object v0, p0, Lcom/coloros/settings/OppoEditPinActivity;->a:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1225
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-static {v0, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 94
    :cond_5
    iget v0, p0, Lcom/coloros/settings/OppoEditPinActivity;->d:I

    invoke-static {p0, v0}, Lcom/coloros/settings/utils/al;->a(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 95
    invoke-virtual {p0}, Lcom/coloros/settings/OppoEditPinActivity;->finish()V

    const-string v0, "finish Activity"

    .line 96
    invoke-static {v4, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :cond_6
    iget-object v0, p0, Lcom/coloros/settings/OppoEditPinActivity;->a:Lcom/color/support/widget/ColorEditText;

    new-instance v2, Lcom/coloros/settings/OppoEditPinActivity$2;

    invoke-direct {v2, p0}, Lcom/coloros/settings/OppoEditPinActivity$2;-><init>(Lcom/coloros/settings/OppoEditPinActivity;)V

    invoke-virtual {v0, v2}, Lcom/color/support/widget/ColorEditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2144
    iget-object v0, p0, Lcom/coloros/settings/OppoEditPinActivity;->b:Lcom/color/support/widget/ColorNumericKeyboard;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorNumericKeyboard;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2145
    invoke-static {}, Lcom/coloros/settings/utils/al;->a()Z

    move-result v2

    const/4 v3, 0x3

    if-eqz v2, :cond_7

    const v2, 0x7f1207fb

    .line 2146
    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2147
    invoke-virtual {v0, v3, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 2149
    :cond_7
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 2151
    :goto_0
    iget-object p1, p0, Lcom/coloros/settings/OppoEditPinActivity;->b:Lcom/color/support/widget/ColorNumericKeyboard;

    invoke-virtual {p1, v0}, Lcom/color/support/widget/ColorNumericKeyboard;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .line 162
    invoke-virtual {p0}, Lcom/coloros/settings/OppoEditPinActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f0a03da

    .line 163
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/OppoEditPinActivity;->c:Landroid/view/MenuItem;

    .line 165
    iget-object p1, p0, Lcom/coloros/settings/OppoEditPinActivity;->a:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 167
    iget-object v1, p0, Lcom/coloros/settings/OppoEditPinActivity;->c:Landroid/view/MenuItem;

    if-eqz v1, :cond_1

    .line 168
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-interface {v1, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_1
    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 176
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a03d7

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const v1, 0x7f0a03da

    if-eq v0, v1, :cond_0

    .line 188
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 183
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/OppoEditPinActivity;->a:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, -0x1

    .line 184
    invoke-direct {p0, v0, p1}, Lcom/coloros/settings/OppoEditPinActivity;->a(ILjava/lang/String;)V

    .line 185
    invoke-virtual {p0}, Lcom/coloros/settings/OppoEditPinActivity;->finish()V

    return v2

    :cond_1
    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 179
    invoke-direct {p0, p1, v0}, Lcom/coloros/settings/OppoEditPinActivity;->a(ILjava/lang/String;)V

    .line 180
    invoke-virtual {p0}, Lcom/coloros/settings/OppoEditPinActivity;->finish()V

    return v2
.end method

.method public onPause()V
    .locals 1

    .line 156
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    .line 157
    iget-object v0, p0, Lcom/coloros/settings/OppoEditPinActivity;->e:Lcom/coloros/settings/receiver/a;

    invoke-virtual {v0, p0}, Lcom/coloros/settings/receiver/a;->a(Landroid/content/Context;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 118
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 119
    iget-object v0, p0, Lcom/coloros/settings/OppoEditPinActivity;->a:Lcom/color/support/widget/ColorEditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorEditText;->setFocusable(Z)V

    .line 120
    iget-object v0, p0, Lcom/coloros/settings/OppoEditPinActivity;->a:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorEditText;->setFocusableInTouchMode(Z)V

    .line 121
    iget-object v0, p0, Lcom/coloros/settings/OppoEditPinActivity;->a:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorEditText;->requestFocus()Z

    .line 122
    new-instance v0, Lcom/coloros/settings/receiver/a;

    invoke-direct {v0}, Lcom/coloros/settings/receiver/a;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/OppoEditPinActivity;->e:Lcom/coloros/settings/receiver/a;

    .line 123
    iget-object v0, p0, Lcom/coloros/settings/OppoEditPinActivity;->e:Lcom/coloros/settings/receiver/a;

    .line 3080
    iget-boolean v2, v0, Lcom/coloros/settings/receiver/a;->a:Z

    if-nez v2, :cond_1

    .line 3081
    iput-boolean v1, v0, Lcom/coloros/settings/receiver/a;->a:Z

    .line 3082
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 3083
    invoke-static {p0}, Lcom/coloros/settings/utils/al;->p(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "oppo.intent.action.SUBINFO_STATE_CHANGE"

    .line 3084
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    .line 3086
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :goto_0
    const/4 v2, 0x0

    const-string v3, "oppo.permission.OPPO_COMPONENT_SAFE"

    .line 3088
    invoke-virtual {p0, v0, v1, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/OppoEditPinActivity;->e:Lcom/coloros/settings/receiver/a;

    new-instance v1, Lcom/coloros/settings/OppoEditPinActivity$3;

    invoke-direct {v1, p0}, Lcom/coloros/settings/OppoEditPinActivity$3;-><init>(Lcom/coloros/settings/OppoEditPinActivity;)V

    .line 3107
    iput-object v1, v0, Lcom/coloros/settings/receiver/a;->b:Lcom/coloros/settings/receiver/a$a;

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 111
    invoke-virtual {p0}, Lcom/coloros/settings/OppoEditPinActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    const-string v1, "key_ui_mode"

    .line 112
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 113
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
