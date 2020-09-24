.class public Lcom/android/settings/network/ApnPreference;
.super Landroidx/preference/Preference;
.source "ApnPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field static b:Ljava/lang/String;

.field private static d:Landroid/widget/CompoundButton;


# instance fields
.field a:I

.field c:Z

.field private e:Z

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, v0}, Lcom/android/settings/network/ApnPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f040049

    .line 47
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/network/ApnPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 40
    iput p1, p0, Lcom/android/settings/network/ApnPreference;->a:I

    const/4 p1, 0x0

    .line 56
    iput-boolean p1, p0, Lcom/android/settings/network/ApnPreference;->e:Z

    const/4 p2, 0x1

    .line 57
    iput-boolean p2, p0, Lcom/android/settings/network/ApnPreference;->f:Z

    .line 58
    iput-boolean p1, p0, Lcom/android/settings/network/ApnPreference;->c:Z

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    .line 98
    sput-object p0, Lcom/android/settings/network/ApnPreference;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 62
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a0092

    .line 64
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 65
    instance-of v0, p1, Landroid/widget/RadioButton;

    if-eqz v0, :cond_2

    .line 66
    check-cast p1, Landroid/widget/RadioButton;

    .line 67
    iget-boolean v0, p0, Lcom/android/settings/network/ApnPreference;->f:Z

    if-eqz v0, :cond_1

    .line 68
    invoke-virtual {p1, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/network/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/settings/network/ApnPreference;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    sput-object p1, Lcom/android/settings/network/ApnPreference;->d:Landroid/widget/CompoundButton;

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/network/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/settings/network/ApnPreference;->b:Ljava/lang/String;

    :cond_0
    const/4 v1, 0x1

    .line 76
    iput-boolean v1, p0, Lcom/android/settings/network/ApnPreference;->e:Z

    .line 77
    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    const/4 v0, 0x0

    .line 78
    iput-boolean v0, p0, Lcom/android/settings/network/ApnPreference;->e:Z

    .line 79
    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setVisibility(I)V

    return-void

    :cond_1
    const/16 v0, 0x8

    .line 81
    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ID: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/network/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ApnPreference"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-boolean v0, p0, Lcom/android/settings/network/ApnPreference;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_2

    .line 108
    sget-object p2, Lcom/android/settings/network/ApnPreference;->d:Landroid/widget/CompoundButton;

    if-eqz p2, :cond_1

    const/4 v0, 0x0

    .line 109
    invoke-virtual {p2, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 111
    :cond_1
    sput-object p1, Lcom/android/settings/network/ApnPreference;->d:Landroid/widget/CompoundButton;

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/network/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/android/settings/network/ApnPreference;->b:Ljava/lang/String;

    .line 113
    sget-object p1, Lcom/android/settings/network/ApnPreference;->b:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/network/ApnPreference;->callChangeListener(Ljava/lang/Object;)Z

    return-void

    :cond_2
    const/4 p1, 0x0

    .line 115
    sput-object p1, Lcom/android/settings/network/ApnPreference;->d:Landroid/widget/CompoundButton;

    .line 116
    sput-object p1, Lcom/android/settings/network/ApnPreference;->b:Ljava/lang/String;

    return-void
.end method

.method public onClick()V
    .locals 5

    .line 122
    invoke-super {p0}, Landroidx/preference/Preference;->onClick()V

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/network/ApnPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 125
    iget-boolean v1, p0, Lcom/android/settings/network/ApnPreference;->c:Z

    if-eqz v1, :cond_0

    const v1, 0x7f120493

    .line 126
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 127
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 130
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/network/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 131
    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v3, v1

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 132
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.EDIT"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 133
    iget v1, p0, Lcom/android/settings/network/ApnPreference;->a:I

    const-string v3, "sub_id"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 134
    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public setSelectable(Z)V
    .locals 0

    .line 139
    iput-boolean p1, p0, Lcom/android/settings/network/ApnPreference;->f:Z

    return-void
.end method
