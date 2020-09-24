.class public Lcom/coloros/settings/feature/notification/DevicesIdPrivacyActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "DevicesIdPrivacyActivity.java"


# static fields
.field private static final a:Ljava/util/regex/Pattern;


# instance fields
.field private b:Landroid/view/View;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "@[a-z]+/[0-9a-z_]+"

    .line 63
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/feature/notification/DevicesIdPrivacyActivity;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;
    .locals 7

    const-string v0, "Error occur, e = "

    const-string v1, "DevicesIdPrivacyActivity"

    .line 190
    invoke-virtual {p0}, Lcom/coloros/settings/feature/notification/DevicesIdPrivacyActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    .line 192
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v4, 0x0

    .line 194
    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v2, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p2

    invoke-direct {v6, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 196
    :goto_0
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 197
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/notification/DevicesIdPrivacyActivity;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 204
    :cond_0
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 206
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catchall_0
    move-exception p1

    move-object v4, v5

    goto :goto_4

    :catch_1
    move-exception p1

    move-object v4, v5

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_2
    move-exception p1

    .line 200
    :goto_2
    :try_start_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v4, :cond_1

    .line 204
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    .line 206
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_3
    return-object v3

    :goto_4
    if-eqz v4, :cond_2

    .line 204
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    :catch_4
    move-exception p2

    .line 206
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_2
    :goto_5
    throw p1
.end method

.method private a(Landroid/widget/TextView;)V
    .locals 2

    .line 230
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 231
    invoke-virtual {p0}, Lcom/coloros/settings/feature/notification/DevicesIdPrivacyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 232
    new-instance v0, Lcom/coloros/settings/feature/notification/DevicesIdPrivacyActivity$3;

    invoke-direct {v0, p0, p1}, Lcom/coloros/settings/feature/notification/DevicesIdPrivacyActivity$3;-><init>(Lcom/coloros/settings/feature/notification/DevicesIdPrivacyActivity;Landroid/widget/TextView;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    .line 215
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/coloros/settings/feature/notification/DevicesIdPrivacyActivity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 218
    sget-object v1, Lcom/coloros/settings/feature/notification/DevicesIdPrivacyActivity;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 219
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 220
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    .line 221
    invoke-virtual {v0, v1, v2, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 222
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p2, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_0
    return-object p2
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 70
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-static {p0}, Lcom/coloros/settings/utils/al;->a(Landroid/app/Activity;)V

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 72
    invoke-static {p0, v0, p1}, Lcom/coloros/settings/utils/al;->a(Landroid/app/Activity;ZZ)V

    .line 73
    invoke-virtual {p0}, Lcom/coloros/settings/feature/notification/DevicesIdPrivacyActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/coloros/settings/utils/al;->a(Landroid/content/Context;Landroid/view/Window;)V

    const v0, 0x7f0d0154

    .line 74
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/notification/DevicesIdPrivacyActivity;->setContentView(I)V

    const v0, 0x7f0a01f2

    .line 75
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/notification/DevicesIdPrivacyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/settings/feature/notification/DevicesIdPrivacyActivity;->d:Landroid/widget/TextView;

    const v0, 0x7f0a01f1

    .line 76
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/notification/DevicesIdPrivacyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/settings/feature/notification/DevicesIdPrivacyActivity;->c:Landroid/widget/TextView;

    const v0, 0x7f0a05b8

    .line 77
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/notification/DevicesIdPrivacyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/notification/DevicesIdPrivacyActivity;->b:Landroid/view/View;

    .line 78
    iget-object v0, p0, Lcom/coloros/settings/feature/notification/DevicesIdPrivacyActivity;->b:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setNestedScrollingEnabled(Z)V

    const v0, 0x7f0a070a

    .line 79
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/notification/DevicesIdPrivacyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcolor/support/v7/widget/Toolbar;

    const v1, 0x7f12010d

    .line 81
    invoke-virtual {v0, v1}, Lcolor/support/v7/widget/Toolbar;->setTitle(I)V

    .line 82
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/notification/DevicesIdPrivacyActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 83
    invoke-virtual {p0}, Lcom/coloros/settings/feature/notification/DevicesIdPrivacyActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 1119
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1120
    sget-boolean p1, Lcom/coloros/settings/a;->a:Z

    if-eqz p1, :cond_0

    const-string p1, "html/advertise_id_statement_exp.html"

    goto :goto_0

    :cond_0
    const-string p1, "html/advertise_id_statement.html"

    .line 1121
    :goto_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/notification/DevicesIdPrivacyActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/coloros/settings/feature/notification/DevicesIdPrivacyActivity;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    .line 1122
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\n"

    const-string v1, "<br />"

    .line 1125
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\t"

    const-string v1, "&nbsp;&nbsp;"

    .line 1126
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 1127
    iget-object v0, p0, Lcom/coloros/settings/feature/notification/DevicesIdPrivacyActivity;->d:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    invoke-static {}, Lcom/coloros/settings/utils/al;->k()Z

    move-result p1

    const/16 v0, 0x21

    const v1, 0x7f1207ac

    const v2, 0x7f120114

    if-eqz p1, :cond_1

    .line 1132
    invoke-virtual {p0, v2}, Lcom/coloros/settings/feature/notification/DevicesIdPrivacyActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1133
    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/notification/DevicesIdPrivacyActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1134
    new-instance v2, Landroid/text/SpannableString;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1135
    new-instance p1, Lcom/color/support/widget/ColorClickableSpan;

    invoke-direct {p1, p0}, Lcom/color/support/widget/ColorClickableSpan;-><init>(Landroid/content/Context;)V

    .line 1136
    new-instance v3, Lcom/coloros/settings/feature/notification/DevicesIdPrivacyActivity$1;

    invoke-direct {v3, p0}, Lcom/coloros/settings/feature/notification/DevicesIdPrivacyActivity$1;-><init>(Lcom/coloros/settings/feature/notification/DevicesIdPrivacyActivity;)V

    invoke-virtual {p1, v3}, Lcom/color/support/widget/ColorClickableSpan;->setStatusBarClickListener(Lcom/color/support/widget/ColorClickableSpan$SpannableStrClickListener;)V

    .line 1154
    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v3, v1

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v1

    invoke-virtual {v2, p1, v3, v1, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1155
    iget-object p1, p0, Lcom/coloros/settings/feature/notification/DevicesIdPrivacyActivity;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1156
    iget-object p1, p0, Lcom/coloros/settings/feature/notification/DevicesIdPrivacyActivity;->c:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/notification/DevicesIdPrivacyActivity;->a(Landroid/widget/TextView;)V

    return-void

    .line 1161
    :cond_1
    invoke-virtual {p0, v2}, Lcom/coloros/settings/feature/notification/DevicesIdPrivacyActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1162
    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/notification/DevicesIdPrivacyActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1163
    new-instance v2, Landroid/text/SpannableString;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1164
    new-instance p1, Lcom/color/support/widget/ColorClickableSpan;

    invoke-direct {p1, p0}, Lcom/color/support/widget/ColorClickableSpan;-><init>(Landroid/content/Context;)V

    .line 1165
    new-instance v3, Lcom/coloros/settings/feature/notification/DevicesIdPrivacyActivity$2;

    invoke-direct {v3, p0}, Lcom/coloros/settings/feature/notification/DevicesIdPrivacyActivity$2;-><init>(Lcom/coloros/settings/feature/notification/DevicesIdPrivacyActivity;)V

    invoke-virtual {p1, v3}, Lcom/color/support/widget/ColorClickableSpan;->setStatusBarClickListener(Lcom/color/support/widget/ColorClickableSpan$SpannableStrClickListener;)V

    .line 1179
    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v3, v1

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v1

    invoke-virtual {v2, p1, v3, v1, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1180
    iget-object p1, p0, Lcom/coloros/settings/feature/notification/DevicesIdPrivacyActivity;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1181
    iget-object p1, p0, Lcom/coloros/settings/feature/notification/DevicesIdPrivacyActivity;->c:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/notification/DevicesIdPrivacyActivity;->a(Landroid/widget/TextView;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 106
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 115
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 109
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/notification/DevicesIdPrivacyActivity;->finish()V

    const/4 p1, 0x1

    return p1
.end method

.method public onPause()V
    .locals 0

    .line 101
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 97
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    return-void
.end method
